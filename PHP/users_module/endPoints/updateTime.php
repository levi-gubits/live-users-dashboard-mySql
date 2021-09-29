<?php

require_once __DIR__ . "/../../data_base.php";

header("Content-Type:application/json; charset=utf-8");
$body = trim(file_get_contents("php://input"));
$request = json_decode($body, true);

$session = $request['sessionKey'];
//Updated detail seen recently for now
$updateUserDetails =  Database::update("UPDATE `users` SET `lastSeen` = NOW() WHERE `sessionKey` = '$session'");


//Sends a success message to the client
$status = json_encode(Array('userDetails' => 'success'));
echo $status;


?>