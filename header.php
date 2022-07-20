<?php
session_start();
if(isset($_SESSION['username']) && (!isset($_SESSION['key']))){
   header('location:account.php?q=1');
}
else if(isset($_SESSION['username']) && isset($_SESSION['key']) && $_SESSION['key'] == '54585c506829293a2d4c3b68543b316e2e7a2d277858545a36362e5f39'){
   header('location:dash.php?q=0');
}
else{}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="icon" href="favicon.ico" type="image/icon" sizes="16x16">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title> Quiz Master  </title>
   
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>

<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">

 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/> 
 <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<?php
if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
}
?>
<script>
function validateForm() {
  var y = document.forms["form"]["name"].value; 
  if (y == null || y == "") {
    document.getElementById("errormsg").innerHTML="Name must be filled out.";
    return false;
  }
  var br = document.forms["form"]["branch"].value;
  if (br == "") {
    document.getElementById("errormsg").innerHTML="Please select your branch";
    return false;
  }
  if (m.length < 10) {
    document.getElementById("errormsg").innerHTML="Passwordr must be 12 digits long";
    return false;
  }
  var g = document.forms["form"]["gender"].value;
  if (g=="") {
    document.getElementById("errormsg").innerHTML="Please select your gender";
    return false;
  }
  var x = document.forms["form"]["username"].value;
  if (x.length == 0) {
    document.getElementById("errormsg").innerHTML="Please enter a valid username";
    return false;
  }
  if (x.length < 4) {
    document.getElementById("errormsg").innerHTML="Username must be at least 4 characters long";
    return false;
  }
  var m = document.forms["form"]["phno"].value;
  if (m.length != 10) {
    document.getElementById("errormsg").innerHTML="Phone number must be 10 digits long";
    return false;
  }
  var a = document.forms["form"]["password"].value;
  if(a == null || a == ""){
    document.getElementById("errormsg").innerHTML="Password must be filled out";
    return false;
  }
  if(a.length<4 || a.length>15){
    document.getElementById("errormsg").innerHTML="Passwords must be 4 to 15 characters long.";
    return false;
  }
  var b = document.forms["form"]["cpassword"].value;
  if (a!=b){
    document.getElementById("errormsg").innerHTML="Passwords must match.";
    return false;
  }
}
</script>
</head>
<body>
  <style type="text/css">
    .navbar ul li {
      padding: 20px;
    }
    .link{
      height: 70px;
      text-align: center;
    }
    .link ul{
      list-style: none;
      padding-left: 150px;

    }
    .link ul li{
      float: left;
      padding: 10px;
    }
    .link ul li a img{
      height: 30px;
      width: 30px;
      border-radius: 100%;
    }
    .footer_nav{

  height: 70px;
  text-align: center;

}
.footer_nav ul{
    
  list-style: none;

}
.footer_nav ul li {
  float: left;
  padding: 15px;
}
.footer_nav ul li a{
  text-decoration: none;
  color: gray;
  text-align: center;
}
.footer_nav ul li a:hover{
  color: white;
  transition: 1s;
}

    
  </style>
<div class="container-fluide">
  <div class="row">
    <div class="col-md-12 bg-dark" style="height: 70px">
      <ul>
       <!--  <li style="float: left;padding: 10px;"><p class="text-light" id="demo"></p> </li> -->
        <li style="float: left;padding-top: 20px; padding-left: 20px;"><a style="color: white;padding-top: 10px;" href="https://dinshikkha.com/">হোম </a> </li>
        <li style="float: left;padding-top: 20px; padding-left: 20px;"><a style="color: white;padding-top: 10px;" href="https://dinshikkha.com/">সিরাতুন নবী (সাঃ)</a> </li>
      </ul>
    </div>
  </div>
</div>




<div class="container-fluide bg-light">
        <div class="row">
            <div class="col-md-12 text-center">

               <a href="https://dinshikkha.com/"><img style="" height="300px" width="50%"   src="image/Logo design 2.png"></a>
            </div>
        </div>
    
    </div>

<!-- 
    nav -->
       <div class="container-fluide  bg-dark ">
         <div class="row">
           <div class="col-md-6 ">
      <nav class="navbar navbar-expand-lg  " >
      <!-- <a class="navbar-brand text-light " href="#"><img height="100px" width="100px" style="border-radius: 100%;margin-top: -40px" src="image/Logo design 1.jpg"> </a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon bg-info"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 20px">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link text-light " href="index.php"> হোম <span class="sr-only">(current)</span></a>
          </li>
        
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             কুইজ 
            </a>
            <?php
            include_once 'dbConnection.php';
            $slct=mysqli_query($con,"SELECT * FROM `quiz`");
            


            ?>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <?php
              while ($fatch=mysqli_fetch_assoc($slct)) 
                               {
                                 
                               
                  ?>
                <a class="dropdown-item text-success" href="#" data-toggle="modal" data-target="#myModal"><?= $fatch['title'] ?></a>
             
             
              <?php
              }


              ?>
              
            </div>
          </li>

          <li class="nav-item active">
            <a class="nav-link text-light " href="leaderboard.php"> লিডারবোর্ড <span class="sr-only">(current)</span></a>
          </li>
                   
        </ul>
      
      </div>
    </nav>

           </div>
           <div class="col-md-6">
            <br /><br />

            <nav class="navbar navbar ">
                <form class="form-inline">
                  <!-- <button class="btn btn-success" type="button" data-toggle="modal" data-target="#exampleModalLong"></button>&nbsp;&nbsp;&nbsp; -->
                  <a href="registration.php" class="btn btn-success">রেজিস্ট্রেশন করুন </a>&nbsp;&nbsp;&nbsp;
                  <button class="btn btn-sm btn-secondary" type="button" data-toggle="modal" data-target="#myModal">লগইন করুন </button>&nbsp;&nbsp;
                   <a href="help.php" class="btn btn-danger">সাহায্যের জন্য </a>
                </form>
              </nav>
              <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
   
        
    

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>
           </div>
         </div>
       </div>

<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
      </div>
      <div class="modal-body">
         <h4 class="text-center text-success"><b>Login to your Account</b></h4>
<form class="form-horizontal" action="login.php?q=index.php" method="POST">
 <fieldset>
      <div class="form-group">
           <label class="col-md-3 control-label" for="username"></label>  
            <div class="col-md-6">
              <input id="username" name="username" placeholder="Username" class="form-control input-md" type="username">
                
            </div>
      </div>
      <div class="form-group">
              <label class="col-md-3 control-label" for="password"></label>
              <div class="col-md-6">
                <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">
                
              </div>
     </div>

     <a style="color: green;text-decoration: none;font-size: 15px;" href="forget.php">forgotpassword</a>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Log in</button>

      </div>
  </fieldset>
</form>
      </div>
  
  </div>
</div></div>

            </div>
          </div>
        </div>