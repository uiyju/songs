document.getElementById("random").addEventListener("click", function() {
    fetch('random.php')
      .then(response => {
        if (response.ok) {
          // Если запрос был успешным, вернуть JSON-данные
          return response.json();
        } else {
          // Вернуть ошибку указав статус HTTP
          throw new Error('Ошибка HTTP: ' + response.status);
        }
      })
      .then(data => {
        // Обработать данные из ответа сервера
        console.log('Данные от сервера:', data);
      })
      .catch(error => {
        // Обработать ошибку
        console.error('Ошибка fetch:', error);
      });
  });