<?php
include_once 'dbConnection.php';
ob_start();
$name     = $_POST['name'];
$name     = ucwords(strtolower($name));
$email    = $_POST['email'];
$username = $_POST['username'];
$phno     = $_POST['phno'];
$address  = $_POST['address'];
$password = $_POST['password'];


$name     = stripslashes($name);
$name     = addslashes($name);
$name     = ucwords(strtolower($name));

$username = stripslashes($username);
$username = addslashes($username);
$phno     = stripslashes($phno);
$phno     = addslashes($phno);
$password = stripslashes($password);
$password = addslashes($password);

$email_check= mysqli_query($con,"SELECT * FROM `user` WHERE `email`='$email'");
    if (mysqli_num_rows($email_check)==0) {
        
        if (strlen($password)>5) {
    $password = md5($password);
    $q3 = mysqli_query($con, "INSERT INTO user VALUES  (NULL,'$name', '$email','$username' ,'$phno','$address', '$password')");
    if ($q3) {
    session_start();
    $_SESSION["username"] = $username;
    $_SESSION["name"]     = $name;
    
    header("location:account.php?q=1");
} else {
   header("location:registration.php?q7=অলরেডি এই ইউজার নেমটি ব্যবরিত .অন্যএকটি দিন &name=$name&email=$email&username=$username&phno=$phno&address=$address");
    
   // header("location:index.php");
}
    
}
else{
    header("location:registration.php?q7=আপনার পাসওয়ার্ড দিন কমপক্ষে ৬ টি থেকে কম হয়েছে &name=$name&email=$email&username=$username&phno=$phno&address=$address");
     
     // header("location:index.php");


}

}



else{
    header("location:registration.php?q7=অলরেডি এই ইমেইলটি ব্যবরিত .অন্যএকটি দিন&name=$name&email=$email&username=$username&phno=$phno&address=$address");
	 
	 // header("location:index.php");


}


ob_end_flush();
?>