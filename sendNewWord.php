<?php

$json = file_get_contents('php://input');
$obj = json_decode($json);
$connection = new PDO("mysql:host=localhost;dbname=mixedmessages", "root", "");

if ($obj[0] != ('adjectives' || 'nouns' || 'verbs' || 'who')) {
    echo json_encode("Wrong table name");
} elseif ($obj[1] == '') {
    echo json_encode("Don't send empty strings");
} else {
    $table = $obj[0];
    $sanitizedObj = preg_replace('/[0-9\$@.%&#!?`´_;\"+<>,:\/\\\\]/', '', $obj[1]);
    try {
        $preparedSql = $connection->prepare("INSERT INTO $table (col2) VALUES (:word)");
        $preparedSql->execute([':word' => $sanitizedObj]);
        echo json_encode("Entry successful. Added " . $sanitizedObj);
    } catch (Exception $e) {
        if ($e->errorInfo[1] === 1062) {
            echo json_encode("Duplicate entry");
        }
    }
}
