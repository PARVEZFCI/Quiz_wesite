<?php
include('header.php');
include_once 'dbConnection.php';


?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>help</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2">

				
			</div>
			<div class="col-md-8">
                <?php
                $selct="SELECT * FROM `question`";
                $query=mysqli_query($con,$selct);
                
                while ($fatch=mysqli_fetch_assoc($query)) {
                
                ?>
                <h3><?= $fatch['title']?> </h3>
				<p class="lead">
					<?=$fatch['ans']?>
				</p>
			<?php }?>

				
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
</body>
</html>



<?php
include('footer.php');
?>