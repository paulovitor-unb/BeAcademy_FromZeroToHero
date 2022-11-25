/* Rest parameters */
function getSum(...args) {
    let total = 0;

    for (const arg of args) {
        total += arg;
    }

    return total;
}

// console.log(getSum(2, 5));
// console.log(getSum(2, 5, 10, 2));

/* Spread operator */
const arr = [1, 2, 3];
const arr2 = [...arr, 4];
// console.log(arr2);

const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const mergeArrays = [0, ...array1, ...array2, 7];
// console.log(mergeArrays);

/* Destructuring objetos */
const carro = {
    marca: "Fiat",
    ano: 2018,
    portas: 4,
};

// const marca = carro.marca;
// const ano = carro.ano;
// const portas = carro.portas;
const { marca, ano, portas } = carro;

// console.log(`Marca: ${marca}; Ano: ${ano}; Num portas: ${portas}`);

const cliente = {
    nome: "Marcelo",
    compras: {
        digitais: {
            livros: ["Dom Casmurro", "0 Cortiço"],
            filmes: ["Senhor do Anéis", "Matrix"],
        },
        fisicas: {
            cadernos: ["Caderno"],
        },
    },
};

//console.log(cliente.compras.digitais.livros);
//console.log(cliente.compras.digitais.filmes);

const { livros, filmes } = cliente.compras.digitais;
// console.log(livros);
// console.log(filmes);

/* Destructuring arrays */
const frutas = ["Banana", "Uva", "Morango"];

// const primeira = frutas[0];
// const segunda = frutas[1];
// const terceira = frutas[2];
const [primeira, segunda, terceira] = frutas;

// console.log(`${primeira}, ${segunda}, ${terceira}`);
