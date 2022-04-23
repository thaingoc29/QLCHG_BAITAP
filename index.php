<?php
 include ('connect/connect.php');
 include ('template/header.php');
 include ('template/nav.php');
 ?>
 <style >
 	img{
 		width: 500px;
 		height: 500px;
 	}
 </style>
 <div class="container">
 	<div class="row">
 		<?php
 		$sql = "select * from products";
 		$res = mysqli_query($connection,$sql);
 		while ($r=mysqli_fetch_array($res)) {
 			?>
 			<div class="col-sm-6 col-md-3">
 				<div class="thumbnail">
 					<a href="detail.php?id=<?php echo$r['id']?>"><img src="img/<?php echo $r['image']?>" alt="<?php echo $r ['title']?>"></a>
 					<div class="caption">
 						<h3><?php echo $r['title']?></h3>
 						<p><?php echo $r['price']?> $</p>
 						<p align="center"><a href="addtocart.php?id=<?php echo$r['id']?>" class="btn btn-primary" role = "button"> Ad to Cart</a>
						<!-- <a href="detail.php?id=<?php echo$r['id']?>" class="btn btn-primary" role = "button"> Xem chi tiết</a></p> -->
 					</div>
 				</div>
 			</div>
 			<?php
 		}?>
 	</div>
 </div>
 <?php
 include ('template/footer.php');
 ?>