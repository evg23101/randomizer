<?php

require_once '../config/db.php';



$id = rand(1,178);
$sth = $dbh->prepare("SELECT `title`,`description`,`genre`,`country` FROM films WHERE `id` = ?");

$sth->execute([$id]);
$value = $sth->fetch();
