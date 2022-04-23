<?php
session_start();
if (isset($_GET['id'])& !empty($_GET['id'])) {
	$item = $_GET['id'];
	//Nếu có số lượng nhập thì lấy theo số lượng nhập
	if(isset($_GET['quantity'])&!empty($_GET['quantity'])){
		$quantity = $_GET['quantity'];
	}
	else{
		//Không có thì số lượng mặc định là 1
		$quantity = 1;
}
		//Nếu session[cart] đã tồn tại, tìm sản phẩm có cùng id để tăng số lượng
		if (isset($_SESSION['cart'])) {
			$cart = $_SESSION['cart'];
			foreach ($cart as $key => $value) {
				if ($key == $item) {
					$quantity = $quantity+$value;
				}
			}
		}
			//Cập nhật biết số session[cart]
			$_SESSION['cart'][$item]=$quantity;
			header('location:cart.php');
		}
		else{
			header('location:cart.php');
		}
?>