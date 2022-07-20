<?php
include_once 'dbConnection.php';

?>
<?php
if(isset($_POST['submit']))
{
    $username=$_POST['username'];
    $password=$_POST['password'];
    

   
    $c_password=$_POST['c_password'];
    // $select_admin_sing_up=mysql_query("SELECT * FROM admin_sing_up WHERE email='$email'");
    // $select_all_data_admin_sing_up=mysql_fetch_array($select_admin_sing_up);
    if (strlen($password)>5) {
        if ($password==$c_password) {
              $password=md5($password);
                 $query_for_update="UPDATE `user` SET `password`='$password' WHERE `username`='$username'";
                $result=mysqli_query($con,$query_for_update);
                if ($result) 
                {
                    header("location:index.php");
                }else{
                    echo "<script>alert('পাসওয়ার্ড রেসেট সম্পন্ন হয়নি ')</script>";
                }
        }else{
            echo "<script>alert('পাসওয়ার্ড নিশ্চিত হয়নি ')</script>";

        }
        
    }else{
        echo "<script>alert('আপনি ৬ টির কম পাসওয়ার্ড দিয়েছেন ')</script>";
    }
    
    

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
                    <form method="post" enctype="multipart/form-data" name="form" style="border:1px solid gray; padding: 10px;">
                        <h1 style="padding: 10px;background-color: gray;text-align: center;">নতুন পাসওয়ার্ড দিন  </h1>
                        <label> ইউজার নেম :</label>
                        <input type="text" class="form-control" name="username" placeholder="ইউজার নেম দিন "><br>
                        <label>পাসওয়ার্ড :</label>
                        <input type="password" class="form-control" name="password" placeholder="পাসওয়ার্ড দিন কমপক্ষে (৬ টি)"><br>
                        
                        <label> পাসওয়ার্ড নিশ্চিত করুন :</label>
                        <input type="password" class="form-control" name="c_password" placeholder="পাসওয়ার্ড নিশ্চিত করুন"><br>
                        <button type="submit" name="submit" class="btn btn-success form-control">Submit</button><br><br>
                        <br>
                        <a href="index.php" class="btn btn-danger">back</a>
                        
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>