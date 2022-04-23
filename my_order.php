
<?php
session_start();
include('template/header.php');
require('connect/connect.php');
?>
<div class="container">
 </p>                                        
  <table class="table">
    <thead>
      <tr>
        <th>Order</th>
        <th>Date</th>
        <th>Status</th>
        <th>Payment method</th>
        <th>Total</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <?php
    $sql = "select * from orders";
    $res = mysqli_query($connection,$sql);
    while ($r=mysqli_fetch_array($res)) {
      ?>
      <tr class="active">
        <td><?=$r['id'];?></td>
        <td><?=$r['uid'];?></td>
        <td><?=$r['timestamp'];?></td>
        <td><?=$r['paymentmode'];?></td>
        <td><?=$r['totalprice'];?></td>
        <td><a>View</a>|<a>Canel</a></td>
      </tr>
     <?php
    }?>
    </tbody>
  </table>
</div>
 <?php
 include ('template/footer.php');
 ?>