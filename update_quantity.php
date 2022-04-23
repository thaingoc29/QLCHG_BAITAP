<?php
session_start();
?>
<?php
if (isset($_POST['id']) & !empty($_POST['id']))
$item = $_POST['id'];
if (isset($_POST['quantity']) & !empty($_POST['quantity']))
$quantity = $_POST['quantity'];
$_SESSION['cart'] [$item] = $quantity;
?>