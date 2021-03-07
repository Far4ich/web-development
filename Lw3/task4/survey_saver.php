<?php
header("Content-Type: text/plain");

if (!isset($_GET['email']))
{
    die("It is obligatory to enter the mail");
}

$saveFile = fopen ("data/{$_GET['email']}.txt", 'w');
fwrite($saveFile, "First Name: {$_GET['first_name']}\nLast Name: {$_GET['last_name']}\nEmail: {$_GET['email']}\nAge: {$_GET['age']}");
fclose($saveFile);
echo "Save complete";