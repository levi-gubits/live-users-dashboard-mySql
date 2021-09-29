<?php

require_once __DIR__ . "/../../data_base.php";

header("Content-Type:application/json; charset=utf-8");

//$onLineUsers = Database::query("SELECT * FROM `users` WHERE NOW() - SEC_TO_TIME(4) <= lastSeen"); //All online users
//$offLineUsers = Database::query("SELECT * FROM `users` WHERE NOW() - SEC_TO_TIME(4) > lastSeen"); //All offline users
$json = [];
date_default_timezone_set("israel");
$d = strtotime("-4 Seconds");
$date = date("Y-m-d h:i:s",$d);

$allUsers = Database::query("SELECT * FROM `users`"); //All users

//Prepares a list of all users
foreach($allUsers as $data){

    $n=strtotime($data['lastSeen']);
    $newDate = date("Y-m-d h:i:s",$n);

    if($date <= $newDate){
        $lastSeen = "now";
        $status = "onLine";
    } else {
        $lastSeen = $data['lastSeen'];
        $status = "offLine";
    }

    $json[] = ["id" => $data["id"],"name" => $data['name'], "entrance_time" => $data['entrance_time'],
    "lastSeen" => $lastSeen, "User_IP" => $data["userIP"],"status" => $status ]; 
}

//Sends a complete list to the client
echo json_encode($json);
?>