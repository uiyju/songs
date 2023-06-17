<?php session_start();
 $link = mysqli_connect("localhost", "root", "", "progect"); 

 if ($link == false){ 
   print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error()); 
 } 
 else { 
   print("Соединение установлено успешно"); 
 }
 
 mysqli_set_charset($link, "utf8");
 $_SESSION["user-name"] = $row["u_nic"];

if(isset($_GET["exit"])){
   unset($_SESSION["user-name"]);
   header("Location: ./");
}

if (isset($_SESSION["user-name"])){
  echo $_SESSION["user-name"];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>профиль пользователя</h1>
    <a href="?exit=true">выйти</a>
</body>
</html>