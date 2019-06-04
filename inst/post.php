<?php
$connect = mysqli_connect('127.0.0.1','root','','Tanya29'); 
$result = mysqli_query($connect, "INSERT INTO news (img,post_text,user_id)  VALUES ('images/". $_FILES['img']['name'] ."','". $_POST['post_text'] ."','".$_POST['id']."')");
move_uploaded_file($_FILES['img']['tmp_name'], "images/".$_FILES['img']['name']);
header('location:http://tanya29/inst/registr.php?id='.$_POST['id'].'');
echo $connect->query($result);

?>

