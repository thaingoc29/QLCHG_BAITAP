<?php
require 'connect/connect.php';
session_start();
include('connect/connect.php');
include('template/header.php');
include('template/nav.php');
?>
<form method="post" action="cart.php"> 
<div class="container">
  <table class="table">
      <thead>

        <tr>
          <th>Number</th>
          <th>Item Name</th>
          <th>Images</th>
          <th>Price</th>
          <th><input type="hidden" name="id" value="<?=$r['id']?>">Quantity</th>
          <th>curency</th>
          <th>Action</th>
        </tr>
        
      </thead>
      <tbody>
      <?php 
          $total = 0;
          $i = 1;
          if (isset($_SESSION['cart']) & !empty($_SESSION['cart'])) {
            $iditem_array = $_SESSION['cart'];
           
            foreach ($iditem_array as $id => $quantity) {
              $sql = "select * from products where id = $id"; 
              $res = mysqli_query($connection,$sql);
              $r = mysqli_fetch_array($res);
           ?>   

        <tr>
          <td><?=$i;?></td>
          <td><img style="width: 100px; height: 70px" src="img/<?=$r['image'];?>" ></td>
          <td><?=$r['title'];?></td>
          <td><?=$r['price'];?> $</td>
          <td><input type="number" min=1 value="<?=$quantity;?>" data-id="<?=$id?>" class="update_quantity" size="3">

          </td> 


          <td><?=$r['price']*$quantity;?> $</td>
          <td><a href="delcart.php?remove=<?=$r['id'];?>">Remove</a></td>
        </tr>
      <?php
        
        $total += $r['price']*$quantity;
         $i+=1;}}
        ?> 

        <tr>
          <td colspan="2">Total</td>
          <td></td>
           <td></td>
           <td></td>
          <td><?php echo $total; ?> $</td>
          <td><a href ="http://localhost/e-comm1/cart.php">Update</a>
          </td>
        </tr>
        <tr>
          <td colspan="2"></td>
          <td></td>
           <td></td>
           <td></td>
          <td></td>
          <td><a href ="checkout.php">Checkout</a>
          </td>
        </tr>

      </tbody><br>
       <button type="submit" name="submit">Update Cart</button>
    </table>
</div>
</form>
<?php
include('template/footer.php');
?>