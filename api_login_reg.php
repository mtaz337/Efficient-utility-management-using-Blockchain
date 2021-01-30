<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$address    = "";
$phone    = "";
$errors = array(); 


if(isset($_POST['reg_user'])){
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $phone = mysqli_real_escape_string($db, $_POST['phone']);
  $address = mysqli_real_escape_string($db, $_POST['address']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
 
  // form validation: ensure that the form is correctly filled ...
  // by adding ()) corresponding error unto $errors array
  if (empty($username)) { $errors['user']="Username is required"; }
  if (empty($email)) { $errors['email']="Email is required"; }
  if (empty($password_1)) { $errors['pass']="Password is required"; }
  if (empty($phone)) { $errors['phone']="phone is required"; }
  if (empty($address)) { $errors['address']="address is required"; }
  if ($password_1 != $password_2) {
	$errors['pass']="The two passwords do not match";
  }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      $errors['user']="Username already exists";
    }

    if ($user['email'] === $email) {
      $errors['email']="email already exists";
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) { 
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (username, email, password,phone,address,created) 
  			  VALUES('$username', '$email', '$password', '$phone', '$address', '$date')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['phone'] = $phone;
  	$_SESSION['address'] = $address;
  	$_SESSION['success'] = "You are now logged in";
	echo '<script>window.location.href = "Sell.php";</script>';
  
  }  
}


 
// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  if (empty($username)) {
  	$errors['user']="Username is required";
  }
  if (empty($password)) {
  	$errors['pass']="Password is required";
  }

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
	$row = mysqli_fetch_all($results,MYSQLI_ASSOC);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
	    	$_SESSION['phone'] = $row[0]['phone'];
  	        $_SESSION['email'] =  $row[0]['email'];
  	        $_SESSION['address'] =  $row[0]['address'];
  	        $_SESSION['user_id'] =  $row[0]['id'];
  	  $_SESSION['success'] = "You are now logged in";
  	  header('location: Sell.php');
  	}else {
  		$errors['user']="Wrong username/password combination";
  	}
  }
} 
?>