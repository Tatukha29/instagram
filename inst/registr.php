<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<meta charset="utf-8">
	<style type="text/css">
		img{
			width: 200px;
		}
		.avatar{
			width: 30px;
			height: 35px;
			border-radius: 10px;
		}
	</style>
</head>
<body>
<?php 
$connect = mysqli_connect('127.0.0.1','root','','tanya29');
$query=mysqli_query($connect, "SELECT * FROM news INNER JOIN instagram ON news.user_id=instagram.id");
$result=mysqli_query($connect, "SELECT * FROM instagram WHERE id='".$_GET['id']."'");
$res=$result->fetch_assoc();
 ?>
 
 <form  method="POST" class="dropdown-item" action="post.php" enctype="multipart/form-data">
 	<div class="row">
 		<?php
 echo '<img  class="avatar" src=" ' . $res['avatar'] . '"</img>';
 ?>
<div>
	<?php
	echo '<p>' . $res['name'] . '</p>';
echo '<p>' . $res['mail'] . '</p>';

  ?>
</div>
  </div>
 <div class="flex">
 	<input type="file" name="img">
 <input type="" name="post_text">
 <button type="submit">
 	Ok
 </button>
 <?php 
  // echo '<input type="hidden" name="name" value="' . $res['name'] . '">';
   //echo '<input type="hidden" name="mail" value="' . $res['mail'] . '">';
   echo '<input type="hidden" name="id" value="' . $res['id'] . '">';
  //  echo '<input type="hidden" name="avatar" value="' . $res['avatar'] . '">';
  ?>
 </div>
 </form>
 <?php 
				for($i=0;$i<$query->num_rows;$i++){
					$res2=$query->fetch_assoc();
					?>
					<div style="margin-bottom: 10px; border: 1px solid grey" class="col-3">
						<div class="col-2">
							<div class="row">
								<?php  
								echo '<img  class="avatar" src=" ' . $res2['avatar'] . '"</img>';
						echo '<a href="#">' . '<h5>' . $res2['user'] . '</h5>' . '</a>';
						
						?>
							</div>
						<?php
							echo '<img  src=" ' . $res2['img'] . '"</img>';
							?>
						</div>
						<div class="col-10">
							<div class="row">
								<?php
							echo '<h5>' . $res2['name'] . ': </h5>';
							?>
							<?php
							echo '<p>' . $res2['post_text'] . '</p>';
							
						?>
							</div>
						</div>
						</div>
						<?php
				}
			 ?>
			
</body>
</html>