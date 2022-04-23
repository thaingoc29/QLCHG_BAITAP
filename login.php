<?php
session_start();
require_once'connect/connect.php';

$email = $pasword  ="";
if ($_SERVER["REQUEST_METHOD"]=="POST") {
	$email = htmlspecialchars(addslashes(trim($_POST["email"])));
	$password = htmlspecialchars(addslashes(trim($_POST["password"])));
	//$password = shal($password);
	$sql_select = "select * from users where email = '$email' and pass = $password";
	$result =mysqli_query($connection,$sql_select);
	if ($row=mysqli_fetch_array($result)) {
		$_SESSION['customer'] = $email;
		$_SESSION['customerid'] = $row['id'];
		//header("loaction: checkout.php");
		header("location: index.php");
	}
	else
		header("location: login.php");
}

	
 ?>