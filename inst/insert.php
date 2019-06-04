<?php
$connect = mysqli_connect('127.0.0.1','root','','tanya29'); 
//$header="instagram";
//$text="Вы успешно зарегались";
$result = mysqli_query($connect, "INSERT INTO instagram (mail, name, user,password,avatar)  VALUES ('". $_POST['mail'] ."','". $_POST['name'] ."','". $_POST['user'] ."','". $_POST['password'] ."','images/". $_FILES['avatar']['name'] ."')");
move_uploaded_file($_FILES['avatar']['tmp_name'], "images/".$_FILES['avatar']['name']);
//mail($_POST['mail'],$header,$text);
header('location:http://tanya29/inst/login.php');
echo $connect->query($result);
?>