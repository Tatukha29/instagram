<?php
   $connect = mysqli_connect('127.0.0.1','root','','tanya29');
	$result=mysqli_query($connect, "SELECT * FROM instagram WHERE user='" . $_POST['user'] ."' AND password = '" . $_POST['password'] . "' ");
	$res=$result->fetch_assoc();
	if($result->num_rows!=0){
	header('Location:http://tanya29/inst/registr.php?id='.$res['id'].'');
	}
	else{
	header('Location:http://tanya29/inst/login.php?error="Неверно введены логин или пароль"');
	}
	?>
	

