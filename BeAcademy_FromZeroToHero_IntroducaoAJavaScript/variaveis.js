/* Declaração
var nome1 = "Paulo";
let nome2 = "Vitor";
const nome3 = "dos Santos";
*/

/* Variável let
let nome = "Paulo";
console.log(nome);

nome = 30;
console.log(nome);

nome = "Vitor";
console.log(nome);
*/

/* Variável const
const nome = "Paulo";
console.log(nome);
nome = 30; // Erro -> TypeError
*/

/* Variáveis globais
let nome; // Global
console.log("Variável existe aqui?", nome);
{
    // Escopo(bloco de código)
    nome = "Paulo";
    console.log("Variável existe aqui?", nome);
}
console.log("Variável existe aqui?", nome);
*/

/* Hoisting
// O código a seguir não dá erro devido ao Hoisting
console.log("Variável existe aqui?", nome);
{
    var nome = "Paulo";
}
console.log("Variável existe aqui?", nome);

// Hoisting -> move declaração de variável (sem atribuição de valor) para o topo do código. Só ocorre com variável var
// Durante a interpretação, o código acima é lido da seguinte forma
var nome;
console.log("Variável existe aqui?", nome);
{
    nome = "Paulo";
}
console.log("Variável existe aqui?", nome);
*/

/* Variáveis locais
let nome = "Paulo"; // Global
console.log("Variável existe aqui?", nome);
{
    // Escopo(bloco de código)
    let nome = "Vitor"; // Local (dentro do escopo)
    console.log("Variável existe aqui?", nome);
}
console.log("Variável existe aqui?", nome);
*/

/* Objetos
const human = {
    nome: "Paulo",
    age: 30,
    weight: 64,
    isAthlete: false,
    walk: function () {
        console.log("Estou andando!");
    },
}; // Objeto
console.log({ human });
console.log(human.age);
human.walk();

// Concatenação
console.log("O humano " + human.nome + " tem " + human.age + " anos");
// Interpolação
console.log(`O humano ${human.nome} tem ${human.age} anos`);
*/

/* Arrays
const animals = [
    "Elefante", // 0
    "Gato", // 1
    "Leão", // 2
    "Cachorro", // 3
    { nome: "Vitor", age: 2, weight: 10 }, // 4
];
console.log(animals);
console.log(animals.length);
console.log(animals[2]);
console.log(animals[4].nome);
*/
