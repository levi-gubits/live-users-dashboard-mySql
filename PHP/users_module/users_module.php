<?php 
require_once __DIR__ . "/../data_base.php";
require_once __DIR__ . "/../constants.php";

class Users{

    public $userID;
    public $userName;
    public $session;
    private $count;


    public function checkIfTheUserExists($name, $email){
        // Checks in the database if there is a user with the same email and name (true/false)

        $checkIfEmailExists =  Database::query("SELECT * FROM `users` WHERE email = '$email'");

        if($checkIfEmailExists){
            $checkIfUserExists =  Database::query("SELECT * FROM `users` WHERE name = '$name' AND email = '$email'");
            if($checkIfUserExists){
                $this->updateDetails($checkIfUserExists);
                return _SUCCESS; //There is a user
            } else {
                return _FAILED; //There is an email but the username is not the same (error)
            }           
        }
        return _NOT_FOUND; //The user does not exist in the database The system will create a new user

    }

    //update user details
    public function updateDetails($checkIfUserExists){
        
        $this->userID = $checkIfUserExists[0]['id'];
        $this->session = $checkIfUserExists[0]['sessionKey'];
        $this->count = $checkIfUserExists[0]['visits_count'];

    }

    // create new user
    public function createUser($name ,$email,$userAgent, $userIP){
        $session = session_create_id();

        $createUser = Database::command("INSERT INTO `users`( `name`, `email`, `user_agent`, `entrance_time`, `visits_count`, `sessionKey`, `userIP`, `lastSeen`) VALUES 
        ('$name','$email','$userAgent',NOW(),1,'$session','$userIP',NOW())");

        if($createUser){
            $_SESSION['session'] = $session;
            return _SUCCESS; //user successfully created
        }
        return _FAILED; //Error creating user
    }

    //login
    public function login($userAgent,$userIP){

        $visitsCount = $this->count + 1; 

        $updateUserDetails =  Database::update("UPDATE `users` SET `user_agent`='$userAgent',`entrance_time`= NOW(),
        `visits_count`=$visitsCount, `userIP`='$userIP', lastSeen= NOW() WHERE id = $this->userID");

        if($updateUserDetails){
            $_SESSION['session'] = $this->session;
            return _SUCCESS; // User logged in successfully
        }
        return _FAILED; //Login error
    }

    //logOut
    public function logOut(){
        //logout Request from user
        session_start();
        unset($_SESSION['session']);
        return _SUCCESS; // User logout successfully
    }

}

?>