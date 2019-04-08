<?php 
	$host = "localhost";
	$username = "---EDIT THIS---";
	$password = "---EDIT THIS---";
	$db_name = "---EDIT THIS---";

	$dbcon = new MySQLi("$host","$username","$password","$db_name");

	if($dbcon-> connect_error) {
		echo "connection_error";
	}/*else{
		echo "connection_ok";
	}*/
?>