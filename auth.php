<?php
session_start();
$link = mysqli_connect("localhost", "root", "", "progect"); 
if ($link == false){ 
print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error()); 
} 
mysqli_set_charset($link, "utf8");

$login = $_POST['u_email'];
$password = $_POST['u_password'];

$sql = "SELECT *
 FROM `users` 
 WHERE `u_email`=? AND `u_password`= md5(?)";

  $result = $link -> prepare($sql);
  $result->bind_param("ss", $login, $password);
  $result-> execute();
  $result= $result->get_result();

 

  if ($row = $result -> fetch_assoc()){
$response = [
  'status'=> 'true',
  'name'=> $row['u_nic'],
  'login'=>$row['u_email'],
  
];

$_SESSION["user-name"] = $row["u_nic"];

  }
  else{
    $response = [
    'status' =>  false
    ];
   
  }
  echo json_encode($response);
?>