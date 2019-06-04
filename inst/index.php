<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<meta charset="utf-8">
	<style type="text/css">
		.logo{
			height: 5%;
			margin-top: 3%;
			margin-right: 80%;
		}
		.main{
			border: 1px solid grey;	
		}
	</style>
</head>
<body>
	<?php 
$connect = mysqli_connect('127.0.0.1','root','','tanya29');
 ?>
<div class="row col-8">
	<img src="images/1.PNG">
	<div class="main col-4">
		<img class="logo" src="images/2.png">
		<h4 class="">
			Зарегистрируйтесь, чтобы смотреть фото и видео ваших друзей
		</h4>
		<div>
			<form  method="POST" class="dropdown-item" action="insert.php" enctype="multipart/form-data">
				<?php 
 					echo '<input placeholder="mail" type="" name="mail" class="form-control">';
 	 				echo '<input placeholder="name"  type="" name="name" class="form-control">';
 					echo '<input placeholder="username" type="" name="user" class="form-control">'; 
 					echo '<input placeholder="password" type="password" name="password"class="form-control">';
 					echo '<input placeholder="avatar" type="file" name="avatar" class="form-control">'; 
 	 			?>
 	 			<button>
 	 				<h6>
 	 					Регистрация
 	 				</h6>
 	 			</button>
 	 			<?php
 	 echo '<p>' . $_GET['error'] . '</p>';
 	   ?>
 			</form>
  			<p>
 	 			Регистрируясь, вы принимаете наши Условия. Политику использования данных и Политику в отношении файлов cookie.
 	 		</p>
 	 		<h6>
 	 			Есть аккаунт? 
 	 			</h6>
 	 			<a href="login.php">Вход</a>
 		</div>
	</div>
</div>
</body>
</html>