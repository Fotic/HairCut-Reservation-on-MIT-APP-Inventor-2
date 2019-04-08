<?php

    include_once 'connect.php';
    
	$UserID = $_POST['UserID'];
	$Dist = $_POST['Dist'];
    $ShopName = $_POST['ShopName'];
	
    $Name1 = $_POST['Name1'];
    $Price1 = $_POST['Price1'];
	
    $Name2 = $_POST['Name2'];
    $Price2 = $_POST['Price2'];
	
    $Name3 = $_POST['Name3'];
    $Price3 = $_POST['Price3'];
	
    $Name4 = $_POST['Name4'];
    $Price4 = $_POST['Price4'];
	
    $Name5 = $_POST['Name5'];
    $Price5 = $_POST['Price5'];
	
    $Name6 = $_POST['Name6'];
    $Price6 = $_POST['Price6'];

	$Ora = $_POST['Ora'];
	$OraParagelias = $_POST['OraParagelias'];
	$HmerominiaParagelias = $_POST['HmerominiaParagelias'];	
	$PaymentType = $_POST['PaymentType'];
	$FinalPrice = $_POST['FinalPrice'];
    
    $sql = $dbcon->query("INSERT INTO _orders (UserID,Dist,ShopName,Name1,Price1,Name2,Price2,Name3,Price3,Name4,Price4,Name5,Price5,Name6,Price6,Ora,OraParagelias,HmerominiaParagelias,PaymentType,FinalPrice) 
							VALUES (				'$UserID',
													'$Dist',
													'$ShopName',
													'$Name1', 
													'$Price1',
													'$Name2',
													'$Price2',
													'$Name3',
													'$Price3',
													'$Name4',
													'$Price4',
													'$Name5',
													'$Price5',
													'$Name6',
													'$Price6',
													'$Ora',
													'$OraParagelias',
													'$HmerominiaParagelias',
													'$PaymentType',
													'$FinalPrice')");

?>