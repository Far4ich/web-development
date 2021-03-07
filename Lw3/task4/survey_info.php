<?php
header("Content-Type: text/plain");

if (!isset($_GET['email']))
{
    die("It is obligatory to enter the mail");
}

if (file_exists("data/{$_GET['email']}.txt"))
{
    echo readfile("data/{$_GET['email']}.txt");
}
else
{
    echo "NOT FOUND";
}
