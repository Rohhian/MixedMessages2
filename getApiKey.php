<?php

$connection = new PDO("mysql:host=localhost;dbname=mixedmessages", "root", "");
$preparedSql = $connection->prepare("SELECT apikey FROM apikeys ORDER BY id");
$preparedSql->execute();
$arr = $preparedSql->fetchAll(PDO::FETCH_COLUMN);

echo json_encode($arr);