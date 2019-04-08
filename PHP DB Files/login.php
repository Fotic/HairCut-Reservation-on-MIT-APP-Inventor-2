<?php

	include_once 'connect.php';

	$Username= $_POST['Username'];
	$Password= $_POST['Password'];

	$sql = "SELECT * FROM _users WHERE Username='$Username' AND Password='$Password'";
	
	$result = $dbcon->query($sql);
	
	if($result->num_rows> 0) {
		while ($row = $result->fetch_assoc()){
			echo $row["Username"];
		}
	} else { 
		echo "login_error";
	}

?>
