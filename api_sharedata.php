<?php

    include('api_get_device.php');
	 include('config.php');
	 $phn_code= $_POST['phn_code'] ;
	 $myJSON= $_POST['myJSON'] ;
	 $txhash= $_POST['txhash'] ;
	 
	 if($phn_code=='vv'){
						$query="select * from user_power_balance where device='$device' AND 
						time_out ='0'    ";						
						$result=mysqli_query($db,$query); $rowcount=mysqli_num_rows($result); $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
						for($i=$rowcount-1;$i>=0;$i--)
						{  
					 
							echo $row[$i]['id'].','.$row[$i]['customer_id'].','.$row[$i]['provider_id'].','.$row[$i]['power_amount'].','.$row[$i]['power_per_kw'].','.$row[$i]['payable_amount'].','.$row[$i]['plant_type'];		
						} 
	 }else{
	    $query = "UPDATE user_power_balance SET transaction_info='$myJSON', txhash='$txhash',time_out ='1' 
		WHERE id='$phn_code' ";
		try{$update_Result = mysqli_query($db, $query);if($update_Result){if(mysqli_affected_rows($db) > 0){$say=' Update Successful '; }
		else{$say=' Update Fail ';}}} catch (Exception $ex) { }						
		 echo $say;
	 }