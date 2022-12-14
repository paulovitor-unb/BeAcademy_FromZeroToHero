/* Elementos do DOM */
const form = document.querySelector("form");

const alertBlock = document.querySelector("#alert-block");
const alertMessage = document.querySelector("#alert-message");

const usernameInput = document.querySelector("#username");
const emailInput = document.querySelector("#email");
const passwordInput = document.querySelector("#password");

const showPasswordIcon = document.querySelector("#show-password-icon");

const submitFormButton = document.querySelector("input[type='submit']");

const collapsibleBlock = document.querySelector(".collapse");
const collapsibleInput = document.querySelector(".collapse input");

const footerText = document.querySelector("footer p");
const switchFormButton = document.querySelector("#switch-form-button");

/* Uso do localStorage para definir tipo de formulário (login ou cadastro) */
if (localStorage.getItem("isNewUser") === "true") {
    switchFormBetweenLoginAndSignup({ target: switchFormButton });

    localStorage.clear();
}

/* Selecionar entre formulário de login e de cadastro */
switchFormButton.addEventListener("click", switchFormBetweenLoginAndSignup);

function switchFormBetweenLoginAndSignup(event) {
    showOrHideCollapsibleInput();
    changeTextsToMatchForm(event.target);
}

function showOrHideCollapsibleInput() {
    collapsibleBlock.classList.toggle("show");
    collapsibleInput.required = !collapsibleInput.required;
    collapsibleInput.value = "";
}

function changeTextsToMatchForm(switchFormButton) {
    [submitFormButton.value, switchFormButton.innerText] = [
        switchFormButton.innerText,
        submitFormButton.value,
    ];

    footerText.innerText =
        footerText.innerText === "Novo por aqui?"
            ? "Já possui uma conta?"
            : "Novo por aqui?";
}

/* Validação do formulário de login/cadastro */
form.addEventListener("submit", validateFormAndLogUserIn);

function validateFormAndLogUserIn(event) {
    event.preventDefault();

    try {
        validateInputs();
        logUserIn();
        redirectToIndexPage();
    } catch (error) {
        showAlertMessage(error.message);
    }
}

function validateInputs() {
    validateUsername();
    validatePassword();
    validateEmail();
}

function validateUsername() {
    const username = usernameInput.value;

    if (!username) {
        throw Error("O nome de usuário não pode ser vazio!");
    }
}

function validatePassword() {
    const passwordLength = passwordInput.value.length;
    const minLength = 8;
    const maxLength = 16;

    if (passwordLength < minLength || passwordLength > maxLength) {
        throw Error(
            `A senha deve ter entre ${minLength} e ${maxLength} caracteres`
        );
    }
}

function validateEmail() {
    const email = document.querySelector("#email").value;
    const emailPattern = /[^ ]@[^ ]+\.[a-z]{2,3}$/i;

    if (emailInput.required && !emailPattern.test(email)) {
        throw Error("Email inválido!");
    }
}

// Uso do localStorage para simular usuário logado
function logUserIn() {
    const username = usernameInput.value;

    localStorage.clear();
    localStorage.setItem("username", username);
}

function redirectToIndexPage() {
    window.location = window.location.href.replace("login.html", "index.html");
}

function showAlertMessage(message) {
    alertBlock.classList.add("alert");
    alertMessage.innerText = message;
}

/* Funcionalidade para mostrar ou ocultar senha no formulário */
showPasswordIcon.addEventListener("click", showOrHidePassword);
showPasswordIcon.addEventListener("keypress", showOrHidePassword);

function showOrHidePassword(event) {
    if (event.type === "click" || event.key === "Enter") {
        changeShowPasswordIcon(event.target);
        changePasswordInputType();
    }
}

function changeShowPasswordIcon(showPasswordIcon) {
    showPasswordIcon.classList.toggle("bi-square");
    showPasswordIcon.classList.toggle("bi-check-square");
}

function changePasswordInputType() {
    passwordInput.type =
        passwordInput.type === "password" ? "text" : "password";
}
