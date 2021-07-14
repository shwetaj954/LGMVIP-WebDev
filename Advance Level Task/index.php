<?php
session_start();
error_reporting(0);
include('includes/config.php');
if($_SESSION['alogin']!=''){
$_SESSION['alogin']='';
}
if(isset($_POST['login']))
{
$uname=$_POST['username'];
$password=md5($_POST['password']);
$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['alogin']=$_POST['username'];
echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
} else{

    echo "<script>alert('Invalid Details');</script>";

}

}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Student Result Management System</title>
        
      <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
    
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">

      <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
      <script src="../assets/js/index.js"></script>
      <link rel="stylesheet" type="text/css" href="css/index.css">
      <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
  </head>
  <body>
    <nav class="navbar fixed-top navbar-expand-lg  shadow-5-strong border-top border-bottom border-primary border-3 fw-bold">
     <div class="container-fluid">
      <a class="navbar-brand text-dark" href="index.php"><b>MyResult
      </b></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item">
          <a class="nav-link active align-items-center toptext" aria-current="page" href="home.php">Home<i class="material-icons align-middle">home</i></a>
         </li> 
        </ul>
      </div>
      </div>
    </nav>
    <div class="banner-top">
      <div class="container">
        <div class="row banner-inner">
          <div class="col-12" style="margin-top: 10%;">
           <h1 style="color:white;">Student Result Management System</h1>
          </div>
        </div> <br>
        <div class="row banner-inner" style="margin-top: 20%;">
         <div class="col-4">
         <a href="find-result.php">
          <div class="card banner-inner-1">
            <img src="https://www.abchouse.org/wp-content/uploads/2015/04/results-1024x724.png" alt="searchresult" height="100%" width="100%">
          </div></a>
        </div>
        <div class="col-4">
         <div class="card banner-inner-1">
         <img src="https://www.pngkey.com/png/full/126-1268354_community-student-icon-graduate-icon.png" alt="searchresult" height="100%" width="100%">
        </div>
        </div>
        <div class="col-4">
         <div class="card banner-inner-1">   
         <img src="https://cdn.pngsumo.com/system-administrator-icon-95416-free-icons-library-system-administrator-logo-png-620_432.jpg" alt="searchresult" height="100%" width="100%">
         </div>
         </div>
        </div>
      </div>
    </div>
    <div class="container ">
      <div class="row rounded-circle login-page">
        <div class="col-3" style="margin-top: 30%;"></div>
        <div class="col-6" style="margin-top: 30%;">
          <form class="form login-item text-center" method="post">
          	<div class="form-group">
       	    	<input type="text" name="username" class="form-control" id="inputEmail3" placeholder="UserName">
            </div>
            <br>
           	<div class="form-group">                                                 		
             	<input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password">                                              	
          	</div><br>
            <div class="form-group mt-20">
            	<button type="submit" name="login" class="btn btn-labeled pull-center login-buton">Sign in<i class="fa fa-check"></i></button>
            </div>
          </form>
        </div>
        <div class="col-3" style="margin-top: 30%;"></div>
      </div>
    </div>
      
    <script src="js/main.js"></script>
        <script>
            $(function(){
            });
    </script>
  </body>
</html>
