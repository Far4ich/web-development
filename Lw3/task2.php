<?php
header("Content-Type: text/plain");

if (!isset($_GET['identifier']))
{
    die("set identifier");
}

$checkString = $_GET['identifier'];

for ($i = 0; $i < strlen($checkString); $i++)
{
    if($i == 0)
    {
        if(!preg_match("/[a-zа-я]/i", $checkString))
        {
            die("no, first symbol must be letter");
        }
    }
    if(!ctype_alnum($checkString[$i]))
    {
        die("no, only letter and digit");
    }
}

echo "yes";