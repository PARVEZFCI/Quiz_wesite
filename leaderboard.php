<?php
include('header.php');
include_once 'dbConnection.php';
?>
<?php

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		
			<div class="col-md-8">
				<section class="table_rank py-4" style="min-height: 400px;">
			<table id="table_id" class="display table">
				    <thead class="thead-dark">
				        <tr>
				            <th>রেংকিং</th>
				           
				            <th>ইউজার নেম </th>
				            <th>স্কোর</th>
				           
				        </tr>
				    </thead>
			    <tbody>
			    	<?php
			    	$i=0;
			    	$query="SELECT * FROM `rank` ORDER BY `score` DESC";
                    $slct=mysqli_query($con,$query);
			    	while ($fetch=mysqli_fetch_assoc($slct)) {
			    		$i++;
			    		
			    	


			    	?>
			        <tr>
			            <td><?= $i?> </td>
			            <td><?=$fetch['username']?></td>
			            <td><?=$fetch['score']?></td>
			        </tr>
			    <?php }?>
			       
			        
			    </tbody>
         </table>
			</section>
		</div>
		
		<div class="col-md-2"></div>
	</div>
</div>
   


<?php
include('footer.php');
?>