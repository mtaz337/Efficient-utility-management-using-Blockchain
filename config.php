<?php $db = mysqli_connect("localhost", "root", "", "smart_electronic"); 
error_reporting(0);
$enable_update='0';

function phpAlert($msg) { echo '<script type="text/javascript">alert("' . $msg . '")</script>'; }

 //date
$d1 = new DateTime('now', new DateTimezone('Asia/Dhaka')); $created=$modified=$d1->format('F j, Y, g:i a'); $t_details=$d1->format('d-m-y, h:i'); $date=$d1->format('Y-m-d');   $month=$d1->format('F');   $year=$d1->format('Y');  
 
 

						
 		?>