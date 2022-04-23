
<?php
	session_start();
	if(isset($_SESSION['total'])) // paypal
		$tien = $_SESSION['total'];
?>
<!DOCTYPE html>
<html>
<head>
	<meta  content="text/html:chartset=utf8" http-equiv="Content-Typre"/>
	<title>Thanh toán Paypal</title>
</head>
<body>
	<fieldset style="color:red">
		<legend>Bạn có mốn thanh toán qua cổng Paypal</legend>
		<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="business" value="sb-qkh5g6055173@business.example.com">
			<input type="hidden" name="cmd" value="_xclick">
			<input type="hidden" name="item_name" value="HoaDonMuaHang">

			<input type="hidden" name="amount" value="<?=$tien?>">

			<input type="hidden" name="currency_code" value="USD">
			<input type="hidden" name="return" value="http://localhost/e-comm1/thanhcong.html">
			<input type="hidden" name="cancel_return" value="http://e-comm1/loi.html">
			<input type="submit" name="submit" value="Checkout Paypal">
		</form>
	</fieldset>
</body>
</html>