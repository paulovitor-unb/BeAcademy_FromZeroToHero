/* Page body */
const body = document.body;

/* Cabeçalho */
const header = document.querySelector("header");
const navButton = document.querySelector("#nav-button");
const sectionLinks = document.querySelectorAll(".section-link");
const loginLinks = document.querySelectorAll(".login-link");

/* Seções do conteúdo principal da página */
const sections = document.querySelectorAll("section");

/* Seçao de busca de CEP e Google Maps */
const cepForm = document.querySelector("#cep-form");
const cepInput = document.querySelector("#cep");
const cepSearchButton = document.querySelector("#cep-search-button");
const cepAlert = document.querySelector("#cep-alert");
const mapsIframe = document.querySelector("#maps-iframe");

/* Seção de contato */
const contactForm = document.querySelector("#contact-form");
const contactFormInputs = document.querySelectorAll(
    "#contact-form .form-input"
);
const nameInput = document.querySelector("#name");
const emailInput = document.querySelector("#email");
const phoneInput = document.querySelector("#phone");
const messageInput = document.querySelector("#message");
const contactMessage = document.querySelector("#contact-message");

/* Uso do localStorage para simular usuário logado */
const username = localStorage.getItem("username");

if (username) {
    // Altera texto nos links de login/cadastro
    loginLinks[0].innerText = username;
    loginLinks[1].innerText = "Sair";

    localStorage.clear();
}

/* Manipulação do DOM pela rolagem vertical (scrollY) */
handleScrollY();

window.addEventListener("scroll", handleScrollY);

function handleScrollY() {
    changeHeaderStyleOnScrollY();
    highlightCurrentSection();
}

function changeHeaderStyleOnScrollY() {
    scrollY
        ? header.classList.add("scroll")
        : header.classList.remove("scroll");
}

function highlightCurrentSection() {
    const targetLine = scrollY + innerHeight / 2;

    for (let i = 0; i < sections.length; i++) {
        const sectionTop = sections[i].offsetTop;
        const sectionBottom = sectionTop + sections[i].offsetHeight;

        if (sectionTop <= targetLine && sectionBottom > targetLine) {
            sectionLinks[i].classList.add("highlight");
        } else {
            sectionLinks[i].classList.remove("highlight");
        }
    }
}

/* Funcionamento da barra de navegação na página */
navButton.addEventListener("click", openOrCloseNavigationMenuOnMobile);

sectionLinks.forEach((sectionLink) => {
    sectionLink.addEventListener("click", openOrCloseNavigationMenuOnMobile);
});

function openOrCloseNavigationMenuOnMobile() {
    if (window.innerWidth < 768) {
        body.classList.toggle("nav-bar-open");
        header.classList.toggle("nav-bar-open");
        navButton.classList.toggle("active");
    } else {
        body.classList.remove("nav-bar-open");
        header.classList.remove("nav-bar-open");
        navButton.classList.remove("active");
    }
}

/* Funcionameto dos botões de login ou cadastro */
loginLinks.forEach((loginLink) => {
    loginLink.addEventListener("click", LogUserOutOrRedirectToLoginPage);
});

function LogUserOutOrRedirectToLoginPage(event) {
    username ? logUserOut(event) : redirectToLoginPage(event);
}

// Função caso haja um usuário "logado"
function logUserOut(event) {
    event.preventDefault();

    if (event.target.innerText !== username) localStorage.clear();

    window.location.reload();
}

// Função para redirecionar para página de login ou cadastro de acordo com o botão clicado
function redirectToLoginPage(event) {
    localStorage.setItem(
        "isNewUser",
        event.target.innerText === "Cadastrar-se"
    );
}

/* Funcionamento da busca pelo CEP + iframe do Google Maps */
cepForm.addEventListener("submit", searchCEPAndUpdateMapsIframe);

async function searchCEPAndUpdateMapsIframe(event) {
    event.preventDefault();

    try {
        disableCEPSearchButton();
        checkIfCEPInputIsValid();
        const data = await searchCEP();
        const newMapsIframeSrc = getNewMapsIframeSrc(data);
        setNewMapsIframeSrc(newMapsIframeSrc);
        removeCEPAlertMessage();
        clearCEPInput();
    } catch (error) {
        showCEPAlertMessage(error.message);
    } finally {
        enableCEPSearchButton();
    }
}

function disableCEPSearchButton() {
    cepSearchButton.disabled = true;
    cepSearchButton.value = "Buscando...";
}

function checkIfCEPInputIsValid() {
    const cep = cepInput.value;
    const cepPattern = /^[0-9]{5}-[0-9]{3}$/;

    if (!cepPattern.test(cep)) {
        throw Error("CEP inválido!");
    }
}

async function searchCEP() {
    const cep = cepInput.value;

    // Uso de Promise + try/catch
    try {
        const response = await fetch(`https://viacep.com.br/ws/${cep}/json/`);
        const data = await response.json();

        return data;
    } catch {
        throw Error("Erro na busca do CEP!");
    }
}

function getNewMapsIframeSrc(data) {
    try {
        const logradouroToURL = data.logradouro.split(/[ /]/).join("+");
        const bairroToURL = data.bairro.split(/[ /]/).join("+");

        const newMapsIframeSrc = `https://maps.google.com/maps?hl=pt-br&ie=UTF8&output=embed&q=mercado+${logradouroToURL}+${bairroToURL}`;

        return newMapsIframeSrc;
    } catch {
        throw Error("CEP não encontrado!");
    }
}

function setNewMapsIframeSrc(newMapsIframeSrc) {
    mapsIframe.src = newMapsIframeSrc;
}

function removeCEPAlertMessage() {
    cepAlert.classList.remove("alert");
    cepAlert.innerText = "";
}

function clearCEPInput() {
    cepInput.value = "";
}

function showCEPAlertMessage(message) {
    cepAlert.classList.add("alert");
    cepAlert.innerText = message;
}

function enableCEPSearchButton() {
    cepSearchButton.disabled = false;
    cepSearchButton.value = "Buscar";
}

/* Máscara de campo para o CEP -> 00000-000 */
cepInput.addEventListener("input", maskCEPInput);

function maskCEPInput() {
    cepInput.value = cepInput.value.replace(/[^0-9]/g, "");

    cepInput.value = cepInput.value.replace(/^(\d{5})(\d{3})(\d+)/, "$1-$2");
    cepInput.value = cepInput.value.replace(/^(\d{5})(\d)/, "$1-$2");
}

/* Validação do formulário de contato */
contactForm.addEventListener("submit", validateFormAndSendMessage);

function validateFormAndSendMessage(event) {
    event.preventDefault();

    try {
        validateInputs();
        showContactSuccessMessage();
        clearContactFormInputs();
    } catch (error) {
        showContactAlertMessage(error.message);
    }
}

function validateInputs() {
    validateName();
    validateEmail();
    validatePhone();
    validateMessage();
}

function validateName() {
    const name = nameInput.value;
    if (!name) {
        throw Error("Nome não pode ser vazio!");
    }
}

function validateEmail() {
    const email = emailInput.value;
    const emailPattern = /[^ ]@[^ ]+\.[a-z]{2,3}$/i;
    if (!emailPattern.test(email)) {
        throw Error("Email inválido!");
    }
}

function validatePhone() {
    const phone = phoneInput.value;
    const phonePattern = /^\(\d{2}\) \d{5}-\d{4}$/;
    if (!phonePattern.test(phone)) {
        throw Error("Telefone inválido!");
    }
}

function validateMessage() {
    const message = messageInput.value;
    if (!message) {
        throw Error("Mensagem não pode ser vazia!");
    }
}

function showContactSuccessMessage() {
    const successMessage = "Mensagem enviada com sucesso!";

    contactMessage.classList.remove("alert");
    contactMessage.classList.add("success");
    contactMessage.innerText = successMessage;

    setInterval(() => {
        contactMessage.classList.remove("success");
        contactMessage.innerText = "";
    }, 3000);
}

function clearContactFormInputs() {
    contactFormInputs.forEach((contactFormInput) => {
        contactFormInput.value = "";
    });
}

function showContactAlertMessage(message) {
    contactMessage.classList.remove("success");
    contactMessage.classList.add("alert");
    contactMessage.innerText = message;
}

/* Máscara de campo para o telefone -> (00) 00000-0000 */
phoneInput.addEventListener("input", maskPhoneInput);

function maskPhoneInput() {
    phoneInput.value = phoneInput.value.replace(/[^0-9]/g, "");

    phoneInput.value = phoneInput.value.replace(
        /^(\d{2})(\d{5})(\d{4})(\d+)/,
        "($1) $2-$3"
    );
    phoneInput.value = phoneInput.value.replace(
        /^(\d{2})(\d{5})(\d)/,
        "($1) $2-$3"
    );
    phoneInput.value = phoneInput.value.replace(/^(\d{2})(\d)/, "($1) $2");
    phoneInput.value = phoneInput.value.replace(/^(\d)/, "($1");
}
