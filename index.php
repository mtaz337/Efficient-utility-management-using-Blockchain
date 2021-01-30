<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
 
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" 	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.3/css/bootstrap.css'>

</head>
<body>
<!-- partial:index.partial.html -->
<!-- Navbar -->

<nav id="navbar1" class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<div class="container">
	
    <span class="navbar-brand"><a class="nav-link" id="" href="index"><strong>Hello! <?php echo $_SESSION['username']; ?></strong></a></span>

    <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text">
    <i class="fa fa-bars fa-1x"></i></span>
    </button>
    
   <div class="collapse navbar-collapse" id="navbarSupportedContent1">
     <ul class="nav navbar-nav ml-auto">
	    <li class="nav-item"><a class="nav-link active" id="active1" href="index.php">Profile</a></li>
	    <li class="nav-item"><a class="nav-link" id="active1" href="Sell.php">Sell</a></li>
		  <li class="nav-item"><a class="nav-link" id="active2" href="Buy.php">Buy</a></li>
	    <li class="nav-item"><a class="nav-link" id="active2" href="#apout">About</a></li>
	    <li class="nav-item"><a class="nav-link" id="active3" href="index.php?logout='1'">logout</li>
    </ul>
	</div>

	</div>
</nav>


<div class="jumbotron text-center">
 
</div>

<div class="container">
  <div class="row">
 
    <div class="col-sm-12">

    </div>
  </div>
</div>





<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.0/js/bootstrap.js'></script>
</body>
</html>



