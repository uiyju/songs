const formAuth = document.getElementById("form-auth");
const output = document.querySelector(".profile")
formAuth.addEventListener("submit", auth);
async function auth(event) {
    event.preventDefault();//отмена поведения по умолчанию
    let data = new FormData(formAuth);
    const response = await fetch("auth.php", {
        method: "POST",
        "Content-Type": 'application/json',
        body: data
    });
    json = await response.json();

    console.log(json);
    if (json.status) {
        output.innerHTML = "вы авторизованы как" + json.name + "<a href='profile.php'>профиль</a>";
        formAuth.style.display = "none";
    }
    else {
        let p = document.createElement("p");
        p.innerHTML = "ошибка";
        output.prepend(p);
    }
}