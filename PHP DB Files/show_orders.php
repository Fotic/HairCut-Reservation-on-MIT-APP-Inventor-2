<?php

	include_once 'connect.php';

	$ShopName= $_POST['ShopName'];
	$HmerominiaParagelias= $_POST['HmerominiaParagelias'];

	$sql = "SELECT *  FROM _orders as _o,_users as _u WHERE _o.ShopName='$ShopName' AND _o.HmerominiaParagelias='$HmerominiaParagelias' AND _o.UserID=_u.Username 
			 ORDER BY CAST(_o.Ora AS UNSIGNED)";

	$result = $dbcon->query($sql);
	
	
	if($result->num_rows> 0) {
		while ($row = $result->fetch_assoc()){
			echo "\nΏρα: ".$row["Ora"]."\nΌνομα: ".$row["Fname"]."\nΕπώνυμο: ".$row["Sname"]."\nΤηλ.: ".$row["Phone"]."\n".$row["Name1"]."\n".$row["Name2"]."\n".
			$row["Name3"]."\n".$row["Name4"]."\n".$row["Name5"]."\n".$row["Name6"]."\nΤρόπος Πλήρ.: ".$row["PaymentType"]."\nΤελικό Ποσό: ".$row["FinalPrice"]."€?";
		}
	} else{
		echo "Δεν έχετε παραγγελίες...";
	}

?>