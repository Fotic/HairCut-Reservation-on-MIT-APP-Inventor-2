<?php

	include_once 'connect.php';

	$ShopName= $_POST['ShopName'];
	$HmerominiaParagelias= $_POST['HmerominiaParagelias'];

	$sql = "SELECT Ora FROM _ores WHERE Ora NOT IN (SELECT Ora FROM _orders WHERE ShopName='$ShopName' AND HmerominiaParagelias='$HmerominiaParagelias')";
	$result = $dbcon->query($sql);
	
	
	if($result->num_rows> 0) {
		while ($row = $result->fetch_assoc()){
			echo $row["Ora"]."?";
		}
	} else{ 
		echo "";
	}

?>