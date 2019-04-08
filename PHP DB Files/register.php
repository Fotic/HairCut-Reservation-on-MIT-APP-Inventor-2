<?php

    include_once 'connect.php';
    
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];
	$Fname = $_POST['Fname'];
	$Sname = $_POST['Sname'];
	$Email = $_POST['Email'];
	$Phone = $_POST['Phone'];
	$BD = $_POST['BD'];
	$Gender = $_POST['Gender'];
    
	$sql1 = $dbcon->query("SELECT * FROM _users WHERE Username='$Username'");
    if(mysqli_num_rows($sql1) >0 ){
        echo "username_already_exist";
    } else { 
		$sql2 = $dbcon->query("INSERT INTO _users (Username,Password,Fname,Sname,Email,Phone,BD,Gender) VALUES (
														'$Username', 
														'$Password',
														'$Fname',
														'$Sname',
														'$Email',
														'$Phone',
														'$BD',
														'$Gender')");
		if ($sql2) {
            echo "register_ok";
        } else {
            echo "register_error";
        } 
	}
?>