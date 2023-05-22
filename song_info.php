<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="content">
  <?php
$link = mysqli_connect("localhost", "root", "", "progect");
if ($link == false){
    print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error());
}
mysqli_set_charset($link, "utf8");

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM songs WHERE song_id = $id";
    $result = $link->query($sql);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo "<h2 >$row[title]</h2>";
        echo "<p class='author'>Исполнитель: $row[author]</p>";
        echo "<img src='$row[photo]' alt='Обложка песни'>";
        echo "<audio controls class='player' src='$row[audio_file]'></audio>";
        echo "<p class='text'>$row[text]</p>";
    } else {
        echo "Песня не найдена";
    }
} else {
    echo "Неверный запрос";
}


?>   </div>
</body>
</html>
