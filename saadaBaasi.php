<?php

$json = file_get_contents('php://input');
$obj = json_decode($json);
$connection = new PDO("mysql:host=localhost;dbname=mixedmessages", "root", "");

try {
    $preparedSql = $connection->prepare("INSERT INTO :baasiNimi (col2) VALUES (:item)");
    $preparedSql->execute([':baasiNimi' => $obj[0], ':item' => $obj[1]]);
} catch (Exception $e) {
    if ($e->errorInfo[1] === 1062) echo json_encode("Duplicate entry");
}
