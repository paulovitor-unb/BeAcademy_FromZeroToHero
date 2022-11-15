/*
// Type Conversion
// Convertendo String para número e número para String
console.log(Number("9") + 24);
console.log(typeof String(9) + " -> Converteu!");

//Contar Caracteres
let oneWord = "Moacir"; // 6 letras
console.log(oneWord.length);

//Maiúsculas e Minúsculas
let phrase = "Olha o bonde da PayLivre!";
console.log(phrase.toUpperCase());
console.log(phrase.toLowerCase());

//Convertendo para Inteiro
let decimalNumber = 32.8;
console.log(parseInt(decimalNumber));

//Convertendo para Decimal
let integerNumber = 24;
console.log(parseFloat(integerNumber));

// Trabalhar com casas decimais, números depois da virgula
let niceNumber = 24.98883422321234324;
console.log(Number(niceNumber.toFixed(4)));
console.log(niceNumber.toFixed(4).replace(".", ","));

// Precisão Numérica
let otherNumber = 1290 / 33;
console.log(otherNumber);
console.log(Number(otherNumber.toPrecision(5)));
*/

/*
// Manipulando String e Arrays

//Separando um texto que contem espaços, em um novo array onde cada palavra é um elemento do array.
let newPhrase = "Fala meus queridos e queridas";
console.log(newPhrase);
let phraseToArray = newPhrase.split(" ");
console.log(phraseToArray);

// Convertendo novamente o texto para string
// .join(" ") -> Permite que eu gere separações ("—", ",", "_", "/", " ", "")
let phraseModify = phraseToArray.join(" ").toLowerCase();
console.log(phraseModify);

//Verificar se contém palavras ou letras
let stringInclude = "Veem ne mim PayLivre, pay pay";
console.log(stringInclude.includes("PayLivre"));

let arrayInclude = [
    "PayLivre",
    "Veem",
    "ne mim",
    "Meu amor",
    { firstName: "Pay", lastName: "Livre" },
];
console.log(arrayInclude.includes("Meu amor"));

//String startsWith
console.log(stringInclude.startsWith("Ve"));
//String endsWith
console.log(stringInclude.endsWith("pay"));

// Transformando um Ar ray em Caracteres
let wordToArray = "Quem tá gostando diz Hey!";
console.log(Array.from(wordToArray));
*/

/*
// Manipulando Arrays
const animals = ["🐺", "🐱", "🦁", "🦒", "🦝"]; // length 5
console.log(animals);

//Adicionar item no fim do array
animals.push("🐷");
console.log(animals);
//Adicionar item no começo
animals.unshift("🐶");
console.log(animals);
//Remover item do fim
console.log(animals.pop());
console.log(animals);
//Remover item do começo
console.log(animals.shift());
console.log(animals);
//Pegar somente alguns elementos do array (sem modificar o array)
console.log(animals.slice(0, 3));
console.log(animals);
//Remover 1 ou mais itens do array
animals.splice(1, 3);
console.log(animals);
//Encontrar a posição do elemento no array
let index = animals.indexOf("🦝");
console.log(index);
animals.splice(index, 1);
console.log(animals);
*/
