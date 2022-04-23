<?php
include('connect/connect.php');
include('template/header.php');
include('template/nav.php');
?>
<style >
.img{
 		width: 500px;
 		height: 500px;
 	}</style>
<div class="container">
	<div class="row">
		<?php 
			if (isset($_GET['id'])){
				$id_product = $_GET['id'];
				$sql = "SELECT products.*, category.name
						FROM products 
						INNER JOIN category 
						ON products.catid = category.id 
						WHERE products.id=$id_product";
				$result = mysqli_query($connection,$sql);
				if ($result) {
					while ($row = mysqli_fetch_assoc($result)) {
						$id_category = $row['catid'];

		?>
		<div class="col-sm-6">
			<img src="img/<?=$row['image']?>" alt="" class="img-thumbnail detail_img">
			
		</div>
		<div class="col-sm-6">
			<h4><?=$row['title']?></h4>
			<p>Giá: <?=$row['price']?></p>
			<p>Danh mục: <?=$row['name']?></p>
			<!-- <p>Chi tiết sản phẩm:</p> -->
			<p><?=$row['description']?></p>
			 <form  method="get" action="addtocart.php">
						   	<div class="product-quantity">
						   		
						   		<input type="hidden" name="id" value="<?=$r['id']?>">Quantity
						   		<input type="text" name="quantity" value="1" size="5" style="margin: 10px 0">
						   	</div>
						   </form>
						   <div class="row">
					        <div class="col-sm-2">
					            <a href="addtocart.php?id=<?php echo $row['id']?>" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a>
					        </div>
					        <div class="col-sm-2">
					            <a href="detail.php?id=<?php echo $row['id']?>" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span>Chi tiết</a>
					        </div>
					    </div>
		</div>

		<?php }}}?>
	</div>
	<div class="row">
			<hr>
			<h4>Sản phẩm liên quan</h4>
			<?php
				$sql = "SELECT * FROM products WHERE catid=$id_category AND id != $id_product";
				$result = mysqli_query($connection,$sql);
				if($result){
					while ($row = mysqli_fetch_assoc($result)) {

			?>
			<div class="col-md-3 col-sm-6 product">
				<div class="white-box">
					<div class="product-img">
					  	<img src="img/<?php echo $row['image'] ?>" alt="<?php echo $row['title'] ?>" class="img-thumbnail detail_img">
					</div>
					<div class="product-bottom">
						  <div class="product-name"><?php echo $row['title'] ?></div>
						   <p><?php echo $row['description'] ?></p>
						  <div class="price">
						   <?php echo $row['price'] ?>
						   <p></p>
						  </div>
					   	<div class="row">
					        <div class="col-sm-6">
					            <a href="addtocart.php?id=<?php echo $row['id']?>" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a>
					        </div>
					        <div class="col-sm-6">
					            <a href="detail.php?id=<?php echo $row['id']?>" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span>Chi tiết</a>
					        </div>
					    </div>
					</div>
				</div>
        	</div>
        <?php }} ?>
	</div>
</div>

<?php
include('template/footer.php');
?>