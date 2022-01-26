<?php

//header("Content-Type: application/json; charset=UTF-8");

$connection = new PDO("mysql:host=localhost;dbname=mixedmessages", "root", "");
$preparedSql = $connection->prepare("SELECT col2 FROM adjectives ORDER BY id");
$preparedSql->execute();
$arr = $preparedSql->fetchAll(PDO::FETCH_COLUMN);

echo json_encode($arr);