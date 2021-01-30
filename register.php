
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
    <div class="col-md-4 jumbotron" style="margin-top:0%">
 
  
    <form method="post" action="register.php">
	<p style="color:red">
	<?php
		/*foreach ($errors as $result) {
			echo $result; 
			echo "<br>";
		} */
	?>
	</p>
	 <h4 style="text-align:center; color:green; padding:15px;">Smart Electronic Supply</h4> 
	<div class="header">
  	<h2>Register</h2>
    </div>
	
	
  <div class="form-group">
    <label for="email">Username:</label>
    <input type="text" class="form-control"    value="<?php echo $username; ?>" name="username" placeholder="Enter Username" >
  <p style="color:red"> <?php echo $errors['user'];  ?>
  </div>  
  <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control"   value="<?php echo $email; ?>" name="email" placeholder="Enter email" >
 <p style="color:red"> <?php echo $errors['email'];  ?>
 </div>
    <div class="form-group">
    <label for="email">phone:</label>
    <input type="text" class="form-control"    value="<?php  echo $phone; ?>" name="phone" placeholder="Enter phone" >
   <p style="color:red"> <?php echo $errors['phone'];  ?>
  </div> 
    <div class="form-group">
    <label for="email">Address:</label>
    <input type="text" class="form-control"   value="<?php  echo $address; ?>" name="address" placeholder="Enter address" >
   <p style="color:red"> <?php echo $errors['address'];  ?>
  </div> 
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password"name="password_1"   class="form-control" placeholder="Enter password_1" id="pwd">
   <p style="color:red"> <?php echo $errors['pass'];  ?>
  </div>
  <div class="form-group">
    <label for="pwd">Confirm Password:</label>
    <input type="password"name="password_2" class="form-control" placeholder="Enter password_2" id="pwd">
  </div>

  <button type="submit" name="reg_user" class="btn btn-primary">Register</button>
  
   <div class="form-group form-check">
    <label class="form-check-label">
    	Already a member? <a href="login.php">Sign in</a>
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