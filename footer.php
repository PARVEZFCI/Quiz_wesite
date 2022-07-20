<!-- <div class="container-fluide">
      <div class="row footer">
      <div class="col-md-3 box">
      <a href="#" data-toggle="modal" data-target="#login" style="color:lightyellow">Admin Login</a></div>
      <div class="col-md-3 box">
      <span href="#" data-target="#login" ><a style="color:white" href="https://dinshikkha.com/">Organized by দীনি শিক্ষা.কম </a> <br><br></span>
      </div>


<div class="col-md-2 box">
<a href="feedback.php" style="color:lightyellow;" onmouseover="this.style('color:yellow')" target="new">Feedback</a></div>

   
</div>
 -->


<!-- model -->
<div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:darkblue;font-size:12px;font-weight: bold">Login to Server</span></h4>
      </div>
      <div class="modal-body title1">
        <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <form role="form" method="post" action="admin.php?q=index.php">
        <div class="form-group">
        <input type="text" name="uname" maxlength="20"  placeholder="Username" class="form-control"/> 
        </div>
        <div class="form-group">
        <input type="password" name="password" maxlength="30" placeholder="Password" class="form-control"/>
        </div>
        <div class="form-group" align="center">
        <input type="submit" name="login" value="Login" class="btn btn-primary" />
        </div>
        </form>
        </div><div class="col-md-3"></div></div>
      </div>
    </div>
  </div>
  </div>


<div class="container">
  
</div>


<div class="container-fluide bg-dark">
<!--   <div class="row">
<div class="col-md-4">
  bang;l
</div>
<div class="col-md-4">
 <div class="link">
  <ul>
        <li><a href="https://web.facebook.com/dinshikkha?_rdc=1&_rdr"><img src="image/facebook.png"> </a> </li>
        <li><a href="https://www.youtube.com/c/DinShikkha/videos"><img src="image/youtube.png"> </a> </li>
        <li><a href="https://www.instagram.com/dinshikkha/"><img src="image/insta.jpg"> </a> </li>
        <li><a href="https://twitter.com/dinshikkha"><img src="image/twit.png"> </a> </li>
       </ul> 
 </div>

</div>
<div class="col-md-4">
 
</div>
</div> -->
  
 <hr />
 <div class="row">
   <div class="col-md-6  text-center">
        <div class="footer_nav text-center">
      <ul style="margin-left: 60px;">
      
     <li><a href="https://dinshikkha.com/"> হোম &nbsp; | </a> </li>
      <li><a href="https://web.facebook.com/dinshikkha/?_rdc=1&_rdr">ফেসবুক পেজ &nbsp; |</a> </li>
      
      <li><a href="#" data-toggle="modal" data-target="#login">admin</a> </li>
    </ul>
    </div>
   </div>
   <div class="col-md-6 text-center">


   


 <div class="col-md-4 py-2">
       <span style="color: gray;text-decoration: none;"> Maintain by:</span><a style="color: gray;text-decoration: none;" href="https://web.facebook.com/prokaysar"> Md.Kawsar Ahmad</a> 
    </div>
    <div class="col-md-4 py-2">
      <span style="color: gray;text-decoration: none;">Developed by:</span> <a style="color: gray;text-decoration: none;" href="https://web.facebook.com/parvez.rohman.5" target="_blank">Parvez ROhman</a>  
    </div>
    <div class="col-md-4 py-2">
      <a style="color: gray;text-decoration: none;" href="https://dinshikkha.com/">© All Right Reserved DinShikkha.Com</a>
    </div>
      <!--  <nav class="navbar navbar-expand-lg navbar-light float-right ">
            
         
            <div class=" navbar-collapse" >
       <div class="navbar-nav ">
         <a class="nav-item nav-link active text-light" href="#">Home |<span class="sr-only">(current)</span></a>
         <a class="nav-item nav-link text-light" href="https://web.facebook.com/dinshikkha/?_rdc=1&_rdr">ফেসবুক পেজ |</a>
         <a class="nav-item nav-link text-light" href="https://web.facebook.com/groups/dinshikkha/?_rdc=1&_rdr">ফেসবুক গ্রুপ |</a>
         <a class="nav-item nav-link" href="https://www.youtube.com/c/DinShikkha/videos">ইউটিউব |</a>
       </div>
            </div>
           </nav> -->
    
   </div>
 </div>
</div>










<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>

<script>
    $(document).ready( function () {
    $('#table_id').DataTable();
} );
    
    </script>
    <script>
var d = new Date();
document.getElementById("demo").innerHTML = d;
</script>
</body>
</html>
