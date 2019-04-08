<?php

	include_once 'connect.php';

	$Username= $_POST['Username'];
	$Password= $_POST['Password'];

	$sql = "SELECT HairCutName FROM _admins WHERE Username='$Username' AND Password='$Password'";

	$result = $dbcon->query($sql);
	
	
	if($result->num_rows> 0) {
		while ($row = $result->fetch_assoc()){
			echo $row["HairCutName"];
		}
	} else{
		echo "login_error";
	}

?>