<?php 
session_start();
if(isset($_POST['id']) & !empty($_POST['id'])){
    $item = $_POST['id'];
    if(isset($_POST['quantity']) & !empty($_POST['quantity'])){
        $quantity = $_POST['quantity'];
    }
    $_SESSION['cart'][$item] = $quantity; 
    if($quantity==0){
        unset($_SESSION['cart'][$item]);
        header('location: cart.php');
    }
    header('location:cart.php');
    //echo $item;
}