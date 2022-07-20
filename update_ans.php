<?php
include_once 'dbConnection.php';

$id=$_GET['id'];
$title=$_GET['name'];
$describe=$_GET['describe'];

//$query=mysqli_query($con,"SELECT * FROM `question` WHERE `id`='$id'");

 $update="UPDATE `question` SET `title`='$title',`ans`='$describe' WHERE id=$id";
 $query=mysqli_query($con,$update);

?>