<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<meta charset="utf-8">
<style type="text/css">
		.logo{
			height: 30px;
			width: 30%;
			margin-top: 3%;
			margin-right: 80%;


		}
	</style>
</head>
<body>
<?php 
$connect = mysqli_connect('127.0.0.1','root','','tanya29');
$result=mysqli_query($connect, "SELECT * FROM instagram");
$res=$result->fetch_assoc();
 ?>
 <div class="col-4">
 	<form  method="POST" class="dropdown-item" action="login1.php" enctype="multipart/form-data">
 		 <?php
 	 echo '<p>' . $_GET['error'] . '</p>';
 	   ?>
 	<img class="logo" src="images/2.png">
 	<?php 
 		echo '<input placeholder="username" type="" name="user" class="form-control">'
 	 ?>
 	 <?php 
 		echo '<input placeholder="password" type="password" name="password" class="form-control">'
 	 ?>
 	 <button>
 	 	ok
 	 </button>
 	</form>
 	<h6>
 	 			Нет аккаунта? 
 	 			</h6>
 	 			<a href="login.php">Регистрация</a>
 </div>
</body>
</html>