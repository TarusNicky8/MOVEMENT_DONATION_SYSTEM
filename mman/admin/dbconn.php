<?php
$host="localhost";
		$uname="root";
		$pas="";
		$db_name="mman";
		$tbl_name="admin";
		
		@mysql_connect("$host","$uname","$pas") or die ("cannot connect");
		mysql_select_db("$db_name") or die ("cannot select db");
		?>