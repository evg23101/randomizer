<?php
try {
    $dbh = new PDO('mysql:dbname=random;host=localhost', 'root', '');
    $dbh->exec("set names utf8");
} catch (PDOException $e) {
    die($e->getMessage());
}