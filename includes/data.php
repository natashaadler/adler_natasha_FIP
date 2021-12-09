<?php

//  ini_set('display_errors', 1);

// pans headers he will explain later
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/database.php';

$database = new Database();
$db = $database->getConnection();

$query = 'SELECT * FROM portfolio_items';

$statement = $db->prepare($query);

$statement->execute();

$result = $statement->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($result);
exit;