<?php
include_once 'dbConnection.php';

?>
<?php
/*$slct=mysqli_query($con,"SELECT * FROM `user`");
$fetch=mysqli_fetch_assoc($slct);
echo $fetch['name'];*/


if(isset($_POST['submit']))
{
    $username=$_POST['username'];
    $phno=$_POST['phno'];
   $query=mysqli_query($con,"SELECT * FROM `user` where username='$username' and phno='$phno'");
   $count=mysqli_num_rows($query);
   $row=mysqli_fetch_array($query);
 
   if ($count>0) {
       
        header("location:reset_password.php");
   }
   else{
    echo "<script>alert('your information is not correct')</script>";

   }
       
    

   /* if($email == $select_all_data_admin_sing_up['email'])
    {
        echo "<script>location='form.php?&&page=reset_pass'</script>";
    }*/
   /* else
    {
        echo "<script>window.alert('Your info is not correct')</script>";
    }*/

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Sing in</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/sing.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="sign-up-data">
                    <br><br><br>
                    <form method="post" enctype="multipart/form-data" name="form" style="border:1px solid gray;padding: 5px;">
                    <h3 style="background-color: gray;padding: 10px;text-align: center;">Forgot password</h3>

                       
                        
                        <input type="text" class="form-control" name="username" placeholder="আপনার ইউজার নেম দিন "><br>
                        <input type="number" name="phno" class="form-control" placeholder="আপনার মোবাইল নাম্বার দিন "><br>
                        
                        <button type="submit" name="submit" class="btn btn-success form-control" >Submit</button><br><br>
                         <a href="index.php" class="btn btn-danger">back</a>
                        
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>