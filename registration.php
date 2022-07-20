<?php
include_once 'header.php';

//include_once 'dbConnection.php';
?>
<?php

?>



<div class="container">
  <div class="row">
    <div class="col-md-2">
      
    </div>
    <div class="col-md-8">
      <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
<fieldset>
              <div class="form-group">
                <label class="col-md-12 control-label" for="name"></label>  
                <div class="col-md-12">
                <h3 align="center">নিবন্ধন ফর্ম</h3>
                  
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-12 control-label" for="name"></label>  
                <div class="col-md-12">
                <div id="errormsg" style="font-size:14px;font-family:calibri;font-weight:normal;color:red"><?php
              if (@$_GET['q7']) {
                  echo '<p style="color:red;font-size:15px;">' . @$_GET['q7'];
              }
              ?></div>
                  
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12 control-label" for="name"></label>  
                <div class="col-md-12">
                <input id="name" name="name" placeholder="আপনার নাম দিন " class="form-control input-md" type="text" value="<?php
              if (isset($_GET['name']))
              {
              echo $_GET['name'];
              }?>" required >
                  
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12 control-label" for="email"></label>  
                <div class="col-md-12">
                <input id="email" name="email" placeholder="আপনার ইমেইল দিন (যেমনঃkarim@gmail.com )" class="form-control input-md" type="email" value="<?php
              if (isset($_GET['email']))
              {
              echo $_GET['email'];
              }?>" style="<?php
                    if (isset($_GET['q7']))
                        echo "border-color:red";
                    ?>" required>
              <span> </span>
                  
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-12 control-label title1" for="username"></label>
                <div class="col-md-12">
                  <input id="username" name="username" placeholder="একটি ইউজার নেম পছন্দ করুন ইংরেজিতে (যেমনঃ Kobir199)" class="form-control input-md" type="username" value="<?php
                    if (isset($_GET['username']))
                    {
                    echo $_GET['username'];
                    };
                    ?>" style="<?php
                    if (isset($_GET['q7']))
                        echo "border-color:red";
                    ?>" required>

                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12 control-label" for="phno"></label>
                <div class="col-md-12">
                   <input id="phno" name="phno" placeholder="আপনার মোবাইল নাম্বার দিন ইংরেজিতে (019......) " class="form-control input-md" type="number" value="<?php
                  if (isset($_GET['phno']))
                  {
                  echo $_GET['phno'];
                  }?>" required>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12control-label" for="address"></label>
                <div class="col-md-12">
                  <input id="address" name="address" placeholder="আপনার বর্তমান ঠিকানা দিন " class="form-control input-md" type="text" value="<?php
              if (isset($_GET['address']))
              {
              echo $_GET['address'];
              }?>" required>
                  
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12 control-label" for="password"></label>
                <div class="col-md-12">
                  <input id="password" name="password" placeholder="আপনার পাসওয়ার্ড দিন কমপক্ষে ৬ টি  (......)" class="form-control input-md" type="password" value="<?php
              if (isset($_GET['password']))
              {
              echo $_GET['password'];
              }?>" required>
                  
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-12control-label" for="cpassword"></label>
                <div class="col-md-12">
                  <input id="cpassword" name="cpassword" placeholder="পাসওয়ার্ড নিশ্চিত করুন" class="form-control input-md" type="password">
                  
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-12 control-label" for=""></label>
                <div class="col-md-12" style="text-align: center"> 
                  <input  type="submit" value=" Register Now " class="btn btn-primary" style="text-align:center" />
                </div>
              </div>

</fieldset>
</form>
      
    </div>
    <div class="col-md-2"></div>
  </div>
</div>

<?php
include_once 'footer.php';

?>