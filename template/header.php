<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <script type="text/javascript">
$(document).ready(function(){
$('.update_quantity').blur(function(){
var quantity = $(this).val()
var id = $(this).data('id')

$.ajax({
url: "update_quantity.php",
method:"POST",
data:{quantity:quantity,id:id},
success:function(data){
swal({
title: "Cập nhật thành công",
showCancelButton: false,
confirmButtonClass: "btn-info",
confirmButtonText: "OK",
closeOnConfirm: false
},
function() {
window.location.href = "cart.php";
});
}
});
});
});
</script>
</head>
<body>
