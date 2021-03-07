<?php
header("Content-Type: text/plain");

if (!isset($_GET['text']))
{
    die("set text");
}

$checkString = trim($_GET['text']);
$resultString = "";
$spaceFlag = false;

for ($i = 0; $i < strlen($checkString); $i++)
{
    $char = $checkString[$i];
    if ($char != " ")
    {
        if ($spaceFlag)
        {
            $resultString = "$resultString ";
        }
        $resultString = "$resultString$char";
        $spaceFlag = false;
    }
    else
    {
        $spaceFlag = true;
    }
}

echo $resultString;