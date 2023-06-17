const randomBtn = document.getElementById("random");
const content = document.getElementById("content");

randomBtn.addEventListener("click", rand);
async function rand(event) {
    event.preventDefault();//отмена поведения по умолчанию
    
    const response = await fetch("random.php", {
       
        
    });
    json = await response.json();

    console.log(json);
    if (json.status) {
      content.innerHTML = "вы авторизованы как" + json.name + "<a href='profile.php'>профиль</a>";
       
    }
    else {
        let p = document.createElement("p");
        p.innerHTML = "ошибка";
        content.prepend(p);
    }
}
// randomBtn.addEventListener("click", function() {
//     fetch('random.php')
//       .then(response => {
//         if (response.ok) {
//           // Если запрос был успешным, вернуть JSON-данные
//           return response.json();
//         } else {
//           // Вернуть ошибку указав статус HTTP
//           throw new Error('Ошибка HTTP: ' + response.status);
//         }
//       })
//       .then(data => {
//         // Обработать данные из ответа сервера
//         console.log('Данные от сервера:', data);
//       })
//       .catch(error => {
//         // Обработать ошибку
//         console.error('Ошибка fetch:', error);
//       });
//   });