<?php
include('./lib/dbcon.php'); 
dbcon(); 
if (isset($_POST['delete_kid'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysql_query("DELETE FROm sabbaths where id='$id[$i]'");
}
header("location: sschoolDetail.php");
}
?>