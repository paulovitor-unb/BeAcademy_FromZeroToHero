/*
// Definição da função
function myFirstFunction() {
    console.log("Olha a função!");
}
// Execução da função
myFirstFunction();

// Função com parâmetros
function sum(number1, number2) {
    console.log(number1 + number2);
}
// Chamada de função com argumentos
sum(32, 24);

// Função com returno
function sumWithReturn(number1, number2) {
    return number1 + number2;
}
// Chamada de função com retorno
console.log(sumWithReturn(7, 13));
*/

/*
// Restaurante
function meuPratoDeComida(comida1, comida2, comida3, comida4) {
    return `Meu prato de comida é: ${comida1},${comida2}, ${comida3} e ${comida4}`;
}
const prato = meuPratoDeComida("arroz", "feijão", "salada", "macarrão");
console.log(prato);

// Arrow function
const myFirstArrowFunction = (num1, num2) => {
    const total = num1 + num2;
    return total;
};

const result = myFirstArrowFunction(90, 20);
console.log(result);
*/

/*
// Função anônima
(function () {
    console.log("PayLivre S2");
})(); //Autoexecução

console.log("Vou levar 3 segundos para ser executado!");
console.log("3");
setTimeout(function () {
    console.log("2");
}, 1000);
setTimeout(function () {
    console.log("1");
}, 2000);
setTimeout(function () {
    console.log("Executado!");
}, 3000);
*/

/* Escopo de variáveis
// Parte 1
let assunto; // Global sem valor
function criarAssunto(assunto) {
    return assunto; // undefined
}
console.log(criarAssunto(assunto));

// Parte 2
let assunto = "Estudar"; // Global
function criarAssunto(assunto) {
    return assunto; // Local = Global
}
console.log(assunto);
console.log(criarAssunto(assunto));

// Parte 3
let assunto = "Estudar"; // Global
function criarAssunto(assunto) {
    assunto = "Escutar música"; // Local com novo valor
    return assunto;
}
console.log(assunto);
console.log(criarAssunto(assunto));

// Parte 4
let assunto = "Estudar"; // Global
function criarAssunto() {
    let assunto = "Escutar música"; // Local
    return assunto;
}
console.log(assunto);
console.log(criarAssunto());
*/

/*
//Hoisting
digaMinhaIdade();
function digaMinhaIdade() {
    return console.log(30);
}

// Callback
function minhaFuncao(callback) {
    console.log("Início da minha função");
    callback(15, 15);
    console.log("Fim da minha função");
}
minhaFuncao((num1, num2) => {
    return console.log(num1 + num2);
});

// Function Construct
function Sum(num1, num2) {
    this.num1 = num1;
    this.num2 = num2;
    this.calc = function (number1 = this.num1, number2 = this.num2) {
        return number1 + number2;
    };
}

const math = new Sum(24, 50);
console.log(math);
console.log(math.num1);
console.log(math.num2);

const math2 = new Sum(50, 64);
console.log(math2.calc());

const math3 = math2.calc(45, 45);
console.log(math3);

const data = new Date().getDay();
console.log(data);
*/
