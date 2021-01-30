<?php
	
	if(isset($_POST['insert_sell_post'])){
	    $provider_id= $_SESSION['user_id'];
		$plant_type= $_POST['plant_type'] ;
		$power_amount= $_POST['power_amount'] ;
		$power_per_kw= $_POST['power_per_kw'] ;
		$payable_amount= $power_per_kw*$power_amount;
 
	$query="INSERT INTO user_power_balance (provider_id,plant_type,power_amount,power_per_kw,payable_amount,reason,created) 
	VALUES ('$provider_id','$plant_type','$power_amount','$power_per_kw','$payable_amount','sell','$date')";
		try{$result=mysqli_query($db,$query);if($result){if(mysqli_affected_rows($db) > 0){
			$say='<x style="color:green">Insert Successful</x>';
		$plant_type="" ;
		$power_amount= "" ;
		$power_per_kw= "" ;
		$payable_amount= "" ;
		}else{$say='<x style="color:red">Insert Fails</x>';}}} catch (Exception $ex) {}
	} 
	
		if(isset($_POST['load_data_sell_post'])){
	    $user_power_balance_id=$_POST['user_power_balance_id'] ;
		$plant_type= $_POST['plant_type'] ;
		$power_amount= $_POST['power_amount'] ;
		$provider_id= $_POST['provider_id'] ;
		$power_per_kw= $_POST['power_per_kw'] ;
		$enable_update='1';
	}	
	
	if(isset($_POST['update_sell_post'])){
		$user_power_balance_id=$_POST['user_power_balance_id'] ;
		$plant_type= $_POST['plant_type'] ;
		$power_amount= $_POST['power_amount'] ;
		$power_per_kw= $_POST['power_per_kw'] ;
		$payable_amount= $power_per_kw*$power_amount;
 
	    $query = "UPDATE user_power_balance SET power_amount='$power_amount', power_per_kw='$power_per_kw',  payable_amount='$payable_amount' 
		WHERE id='$user_power_balance_id' ";
		try{$update_Result = mysqli_query($db, $query);if($update_Result){if(mysqli_affected_rows($db) > 0){$say='<x style="color:green">Update Successful</x>'; }
		else{$say='<x style="color:red">Update Fail</x>';}}} catch (Exception $ex) { }						
 
		$plant_type="" ;
		$power_amount= "" ;
		$power_per_kw= "" ;
		$payable_amount= "" ;
 
	} 
	
	if(isset($_POST['buy_now'])){
		$user_power_balance_id=$_POST['user_power_balance_id'] ;
		$customer_id=$_POST['customer_id'] ;
		$device=$_POST['device'] ;
  
	    $query = "UPDATE user_power_balance SET customer_id='$customer_id', device='$device',time_out='0'
		WHERE id='$user_power_balance_id' ";
		try{$update_Result = mysqli_query($db, $query);if($update_Result){if(mysqli_affected_rows($db) > 0){$say='<x style="color:green">Update Successful</x>'; }
		else{$say='<x style="color:red">Update Fail</x>';}}} catch (Exception $ex) { }						
 
 		/*$block_no=$_POST['block_no'] ;
		$txhash= $_POST['txhash'] ;
		$tx_from= $_POST['tx_from'] ;
		$tx_to= $_POST['tx_to'] ;
		$nonce= $_POST['nonce'] ;
		$input_data= $_POST['input_data'] ;
 
		$query="INSERT INTO transaction_info (user_power_balance_id,block_no,txhash,tx_from,nonce,tx_to,input_data,created) 
		VALUES ('$user_power_balance_id','$block_no','$txhash','$tx_from','$nonce','$tx_to','$input_data','$date')";
			try{$result=mysqli_query($db,$query);if($result){if(mysqli_affected_rows($db) > 0){
				$say='<x style="color:green">Insert Successful</x>';
 
		$plant_type="" ;
		$power_amount= "" ;
		$power_per_kw= "" ;
		$payable_amount= "" ;
		}else{$say='<x style="color:red">Insert Fails</x>';}}} catch (Exception $ex) {}*/
 
	} 
	
	if(isset($_POST['delete_sell_post'])){
		$user_power_balance_id= $_POST['user_power_balance_id'] ;
		$query = "DELETE FROM user_power_balance WHERE id='$user_power_balance_id'";
		if (mysqli_query($db, $query)) {$say='<x style="color:red">Data Deleted Successfully</x>'; } else {$say='<x style="color:red">Delete Fail</x>';}
	}			
	
	
	 //get balance
						$_user=$_SESSION['user_id'];
 						$query="select sum(power_amount) from  user_power_balance where  customer_id ='$_user' AND 
						 time_out ='1'";
						$result=mysqli_query($db,$query);
						$rowcount=mysqli_num_rows($result);
						$row = mysqli_fetch_all($result,MYSQLI_ASSOC);
						
						for($i=$rowcount-1;$i>=0;$i--)
						{  
							$total_buy=$row[$i]['sum(power_amount)'];
						}
						
						$query="select sum(power_amount) from  user_power_balance where  provider_id ='$_user' AND 
						 time_out ='1'";
						$result=mysqli_query($db,$query);
						$rowcount=mysqli_num_rows($result);
						$row = mysqli_fetch_all($result,MYSQLI_ASSOC);
						
						for($i=$rowcount-1;$i>=0;$i--)
						{  
							$total_sell=$row[$i]['sum(power_amount)'];
						}
						
						$power_balance=$total_buy-$total_sell; if($power_balance<0){$power_balance=0;}
						
	
	
	
	
	
	
	