<?php

require_once __DIR__ . "/../../data_base.php";
require_once __DIR__ . "/../users_module.php";

header("Content-Type:application/json; charset=utf-8");

$body = trim(file_get_contents("php://input"));
$request = json_decode($body, true);

$userID = $request['userID']; //Gets userID

//Receives user data by ID number
$getUserDetails =  Database::query("SELECT * FROM `users` WHERE id = '$userID'");
$json = [];


//Prepares all user details
foreach($getUserDetails as $details){

    $json[] = ["id" => $details["id"],"name" => $details['name'], "email" => $details['email'], "user_agent" => $details['user_agent'],
    "entrance_time" => $details["entrance_time"],"visits_count" => $details["visits_count"]];
}

//Sends all user information to the client
echo json_encode($json);


?>