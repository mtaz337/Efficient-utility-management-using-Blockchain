<?php 
include('config.php')  ;
include('api_login_reg.php') 
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
 
<div class="container">
  <div class="row">
 <div class="col-md-4"></div>
    <div class="col-md-4 jumbotron" style="margin-top:10%">
 
  
  <form method="post" action="login.php">
  <h4 style="text-align:center; color:green; padding:15px;">Smart Electronic Supply</h4>
  <div class="form-group">
    <label for="email">Username:</label>
    <input type="text"  autocomplete="off"  class="form-control" name="username" placeholder="Enter Username" >
	 <p style="color:red"> <?php echo $errors['user'];  ?>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password"name="password" class="form-control" placeholder="Enter password" id="pwd">
	<p style="color:red"> <?php echo $errors['pass'];  ?>
  </div>

  <button type="submit" name="login_user" class="btn btn-primary">Submit</button>
  
   <div class="form-group form-check">
    <label class="form-check-label">
      Not yet a member? <a href="register.php">Sign up</a>
    </label>
  </div> 
  
</form>
	
    </div>
  </div>
</div>





<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.0/js/bootstrap.js'></script>
</body>
</html>