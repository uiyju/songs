<?php
$link = mysqli_connect("localhost", "root", "", "progect"); 
if ($link == false){ 
print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error()); 
} 
mysqli_set_charset($link, "utf8");

$title = $_POST['title'];
// $photo = $_POST['picture'];
$author = $_POST['author'];
$text = $_POST['text'];
// $audio_file = $_POST['audio'];


?>
<?php
	if (isset($_FILES['picture'])) {
		$file = $_FILES['picture'];
		//print("Загружен файл с именем " . $file['name'] . " и размером " . $file['size'] . " байт");
        $current_path = $file ['tmp_name'];
	    $filename = $file['name'];
	    $new_path = dirname(__FILE__) . '/picture/' . $filename;
	    move_uploaded_file($current_path, $new_path);
        $photo = 'picture/'. $filename;

	}
   
    if (isset($_FILES['audio'])) {
		$file = $_FILES['audio'];
		//print("Загружен файл с именем " . $file['name'] . " и размером " . $file['size'] . " байт");
        $current_path = $file ['tmp_name'];
	    $filename = $file['name'];
	    $new_path = dirname(__FILE__) . '/audio/' . $filename;
	    move_uploaded_file($current_path, $new_path);
        $audio_file = 'audio/' . $filename;
	}

    $sql = "INSERT INTO `songs`( `title`, `photo`, `author`, `text`, `audio_file`) VALUES ('$title','$photo','$author','$text','$audio_file')";
echo $sql;
$result = $link->query($sql);

if($result ){
    echo "ok";
}
else{
    echo "error";
}

    
?>