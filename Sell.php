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
  
   include('config.php');
   include('api_energy_buy_sell.php')  ;
?>
 
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" 	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.3/css/bootstrap.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/boxicons@2.0.0/css/boxicons.min.css'>
<link rel="stylesheet" href="style.css">


</head>
<body>
<!-- partial:index.partial.html -->
<!-- Navbar -->

<nav id="navbar1" class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<div class="container">
	
    <span class="navbar-brand"><a class="nav-link" id="" href="index"><strong>Hello! <?php echo $_SESSION['username'].' <x style="color:green">Electricity balance:'.$power_balance.' kw</x>'; ?></strong></a></span>

    <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text">
    <i class="fa fa-bars fa-1x"></i></span>
    </button>
    
   <div class="collapse navbar-collapse" id="navbarSupportedContent1">
     <ul class="nav navbar-nav ml-auto">
 
	    <li class="nav-item"><a class="nav-link active" id="active1" href="Sell.php">Sell</a></li>
	    <li class="nav-item"><a class="nav-link" id="active2" href="Buy.php">Buy</a></li>
	    <li class="nav-item"><a class="nav-link" id="active3" href="index.php?logout='1'">logout</a></li>
    </ul>
	</div>

	</div>
</nav>
 
<div class="container-fluid" style="margin-top:100px">
  <div class="row">

    <div class="col-md-4 jumbotron" >
			<form method="post" action="Sell.php">
					<p style="margin-top:-50px"><?php echo $say;?></p>
					<div class="header">
					<h2>Sell Energy</h2>
					</div>
					
							<input style="display:none" type="text" name="user_power_balance_id"  value="<?php echo $user_power_balance_id; ?>" class="form-control" >

				  <div class="form-group">
					<label for="email">Provider Name:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['username']; ?>" disabled="">
				  </div>  
				  <div class="form-group">
					<label for="email">Provider Phone:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['phone']; ?>" disabled="">
				  </div>  
				  <div class="form-group">
					<label for="email">Provider Email:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['email']; ?>" disabled="">
				  </div>   
				  <div class="form-group">
					<label for="email">Provider Address:</label>
					<input type="text"  class="form-control" value="<?php echo $_SESSION['address']; ?>" disabled="">
				  </div>  
				  
				  <div class="form-group">
					<label for="exampleFormControlSelect1">Plant type:</label>
					<select  required class="form-control" name="plant_type"  >
					  <option <?php if($plant_type=='Solar Power'){echo 'selected'; } ?> value="Solar Power">Solar Power</option>
					  <option <?php if($plant_type=='Wind Power'){echo 'selected'; }?> value="Wind Power">Wind Power</option>
					  <option <?php if($plant_type=='Night Power'){echo 'selected'; }?> value="Night Power">Night Power</option>
					</select>
				  </div>
				  
					<div class="form-group">
					<label for="email">Power Plant Amount: (kw)</label>
					<input required type="text" class="form-control" name="power_amount" value="<?php echo $power_amount; ?>" >
				  </div>  
				  
					<div class="form-group">
					<label for="email">Electricity charge per 1kw: (Coin)</label>
					<input required list="power_per_list" class="form-control required" value="<?php echo $power_per_kw; ?>"  type="text" name="power_per_kw" placeholder="Price *"  >
					   <datalist id="power_per_list">
						<option value="1"> 
						<option value="2"> 
						<option value="3"> 
						<option value="4"> 
						<option value="5"> 
						<option value="6"> 
						<option value="7"> 
						<option value="8"> 
						<option value="9"> 
						<option value="10"> 
				  </div> 
<?php if($enable_update=='1'){echo '<button type="submit" name="update_sell_post" class="btn btn-success">UPDATE</button>';}
else{echo '<button type="submit" name="insert_sell_post" class="btn btn-primary">POST</button>';}?>				  
				  
		</form>
    </div> 
	<div class="col-md-8 ">
	<div class="table-responsive ">
			<p>Smart Electronic Supply</p>            
	      <table id="example" class="table table-hover responsive nowrap" style="width:100%">
				<thead>
					<tr>
						<th>SL</th>
						<th>Customer Information</th>
						<th>plant Information</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					
					<?php						 		
						$SL=1;
						$provider_id= $_SESSION['user_id'];
						$query="select * from users,user_power_balance where user_power_balance.provider_id='$provider_id' AND 
						user_power_balance.provider_id=users.id   ";
						$result=mysqli_query($db,$query);
						$rowcount=mysqli_num_rows($result);
						$row = mysqli_fetch_all($result,MYSQLI_ASSOC);
						
						for($i=$rowcount-1;$i>=0;$i--)
						{  
							if($row[$i]['transaction_info_id']=='' && $row[$i]['customer_id']==''){$status='<x style="color:red"><b>Pending</b></x>'; $sold_out='<h3 style="color:green">Available</h3>';  $buy_able=" ";}else{
							$status='<x style="color:green" data-toggle="collapse" data-target="#'.$row[$i]['id'].'"><b style="  cursor: pointer; ">transaction info</b></x>'; $sold_out='<h3 style="color:orange">Sold Out</h3>';  $buy_able="none ";
							 }

		
								
							echo
							'<tr>	
							<td>'.$SL.'</td>
							<td>'.$sold_out.'<b>⌚ Created :</b> ' .$row[$i]['created'].' <br>';
							
								$customer_id=$row[$i]['customer_id'];
								$query1="select * from users WHERE id='$customer_id'";
								$result1=mysqli_query($db,$query1); $rowcount1=mysqli_num_rows($result1); $row1 = mysqli_fetch_all($result1,MYSQLI_ASSOC);
								for($j=$rowcount1-1;$j>=0;$j--)
								{ 
									echo '
									<b>☺ username :</b> '.$row1[$j]['username'].' <br>
									<b>☎ phone :</b> '.$row1[$j]['phone'].'<br>
									<b>✉ email :</b> '.$row1[$j]['email'].' <br>
									<b>✈ address:</b> '.$row1[$j]['address'].'<br>										
																			
									';
								}	
						if($rowcount1==0){echo '<x style="color:orange"><b>Not sold yet</b></x>'; }else{
							echo '<b>⌚ Sold date:</b> '.$row[$i]['updated'].'<br>';
						}
		
				    echo '</td>
							<td> <b>plant_id:</b> '.$row[$i]['id'].'<br>
									<b>plant_type:</b> '.$row[$i]['plant_type'].'<br>
									<b>power_amount :</b> '.$row[$i]['power_amount'].' kw<br>
									<b>power_per_kw :</b> '.$row[$i]['power_per_kw'].' Coin<hr>
									<b>payable_amount :</b> '.$row[$i]['payable_amount'].' Coin<br>
									<b>Reason:</b> '.$row[$i]['reason'].'<br>
									<b>'.$status;
									
									echo '<div id="'.$row[$i]['id'].'" class="collapse" style="overflow:auto">
									         <b style=" width: 350px; overflow:scroll;"># txhash : '.$row[$i]['txhash'].'</b><br>
											<b># All :</b><textarea id="w3review" style=" width: 350px; "name="w3review" rows="10" cols="50"> '.wordwrap($row[$i]['transaction_info'], 20, "<br />\n").'</textarea> <br> </div>';									
									echo '</b> 
							</td>
							<td>
								 <form   method="POST"   >
									<input style="display:none" type="text" name="user_power_balance_id"  value="'.$row[$i]['id'].'" class="form-control" >
									<input style="display:none" type="text" name="plant_type"  value="'.$row[$i]['plant_type'].'" class="form-control" >
									<input style="display:none" type="text" name="power_amount"  value="'.$row[$i]['power_amount'].'" class="form-control" >
									<input style="display:none" type="text" name="power_per_kw"  value=" '.$row[$i]['power_per_kw'].'" class="form-control" >
									<input style="display:none" type="text" name="payable_amount"  value=" '.$row[$i]['payable_amount'].'" class="form-control" >
									<button type="submit"   style="display:'.$buy_able.'" name="load_data_sell_post" class="btn btn-default">✎ </button>
									<button type="submit"   style="display:'.$buy_able.'" name="delete_sell_post" class="btn btn-default">✘ </button>
								 </form>							
							</td>
							</tr>';	
						$SL++;
						} 
						
						?>
						
				</tbody>
			</table>	
	</div>
	</div>
  </div>
</div>





<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.0/js/bootstrap.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js'></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script  src="script.js"></script>
</body>
</html>



