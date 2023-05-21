<?php
$link = mysqli_connect("localhost", "root", "", "progect"); 

if ($link == false){ 
  print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error()); 
} 
else { 
  print("Соединение установлено успешно"); 
}

mysqli_set_charset($link, "utf8");

$sql = "SELECT * FROM songs ORDER BY RAND()";

//Выполнить запрос
$result = $link->query($sql);

$songs = array();
while ($row = $result->fetch_assoc()) {
  $songs[] = $row;
}

// Вернуть результаты в формате JSON
print(json_encode($songs));
exit();
?>
