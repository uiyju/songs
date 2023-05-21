const formInsert = document.getElementById("insert-song");

formInsert.addEventListener("submit", (event) => {
    event.preventDefault();   //отменяем стандартную отправную форму
    console.log("ok");
    let formData = new FormData(formInsert);  //собираем данные с формы, которые ввел пользователь
  
    let xhr = new XMLHttpRequest();         //создаем объект отправки запроса на сервер
    xhr.open("POST", "insertsong.php");  //открываем соединение
    xhr.send(formData);                     //отправка данных на сервер
  
    xhr.onload = () => {
  
      if(xhr.response == "ok") {
        msg.innerHTML = "аудиозапись добавлена";
        msg.classList.add("success");
        msg.classList.add("show-message");
  
        let div   = document.createElement("div");
        let title = formData.get("title");
        let photo = formData.get("photo");
        let author   = formData.get("author");
        let text   = formData.get("text");
        let audio_file   = formData.get("audio_file");

        div.innerHTML = `${title}, ${photo}, ${author}, ${text} ${audio_file}`;
        content.append(div);
      }
  
      else {
        msg.innerHTML = "Ошибка";
        msg.classList.add("reject");
        msg.classList.add("show-message");
      }
  
    };
  
  });
  