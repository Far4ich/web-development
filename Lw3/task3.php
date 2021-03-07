<?php
header("Content-Type: text/plain");

if (!isset($_GET['password']))
{
    die("set password");
}

$checkString = $_GET['password'];

if (!ctype_alnum($checkString))
{
    die ("Password can only consist of English characters or character in upper and lower case, as well as numbers");
}

//var
$passwordStrength = 0;
$digitCount = 0;
$highRegisterCount = 0;
$lowRegisterCount = 0;

//typing
for ($i = 0; $i < strlen($checkString); $i++)
{
    if(ctype_digit($checkString[$i]))
    {
        $digitCount++;
    }
    if(ctype_lower($checkString[$i]))
    {
        $highRegisterCount++;
    }
    if(ctype_upper($checkString[$i]))
    {
        $lowRegisterCount++;
    }
}

$passwordStrength += strlen($checkString) * 4;//
$passwordStrength += $digitCount * 4;//
$passwordStrength += (strlen($checkString) - $highRegisterCount) * 2;//
$passwordStrength += (strlen($checkString) - $lowRegisterCount) * 2;//

//only one type check
if($digitCount == 0)
{
    $passwordStrength -= $highRegisterCount + $lowRegisterCount; 
}

if($lowRegisterCount == 0 && $highRegisterCount == 0)
{
    $passwordStrength -= $digitCount;
}

//check repeat
for ($i = 0; $i < strlen($checkString); $i++)
{
    if(substr_count($checkString, $checkString[$i]) > 1)
    {
        $passwordStrength--;
    }
}

echo $passwordStrength;