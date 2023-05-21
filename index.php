<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script defer src="script.js"></script>
    <script defer src="fetch.js"></script>
    <script defer src="random.js"></script>
</head>
<header><p class="profile"><a href="#form-auth">авторизоваться</a></p>
<?php
if (isset($_SESSION["user-name"])){
  echo $_SESSION["user-name"];
  echo "<a href='profile.php'>перейти в профиль</a>";
}

?>
</header>
<body>
    <form class="form__insert" id="insert-song" enctype="multipart/form-data">
  <input type="text"     name="title" id="title" placeholder="Введите название песни"     required><br>
  <input type="text"     name="author" id="author" placeholder="Введите исполнителя" required><br>
  <input type="text"     name="text" id="text" placeholder="Введите текст песни" required><br>
  <input type="file"     name="picture" id="picture" placeholder="Загрузите обложку песни"><br>
  <input type="file"     name="audio" id="audio" placeholder="Загрузите песню"><br>
  <input type="submit"   value="Добавить">
    </form>
    <button class="random" id="random" >Смешать записи</button>
    <div class="content"> 
<?php 
$link = mysqli_connect("localhost", "root", "", "progect"); 
if ($link == false){ 
print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error()); 
} 
mysqli_set_charset($link, "utf8");

$sql = "SELECT * FROM `songs`";

//Выполнить запрос
$result = $link->query($sql);
while ($row = $result->fetch_assoc())
{
  echo "<div class='audio_'>
  <div class='song' data-id='$row[song_id]'>
          
          <img class='song__img' src='$row[photo]' alt='Обложка песни'>
          <h2>$row[title]</h2>
          <p class='author'>Исполнитель: $row[author]</p>
          <audio class='player'
        controls
        src='$row[audio_file]'>
            
    </audio>
          <button class='delete' id='delete'>Удалить</button>
        </div> 
        </div>";
}


?> 
</div>
<form id="form-auth"  method="POST" action="auth.php">
<input type="text"        id="login"    name="login"    placeholder="введите логин"   required><br>
<input type="password"    id="password" name="password" placeholder="введите пароль"  required><br>
<input type="submit" value="войти">
</form>
    </div>
</body>
</html>