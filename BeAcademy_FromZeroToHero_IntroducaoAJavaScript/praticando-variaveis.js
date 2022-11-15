/*
1. Declare uma variável de nome person
*/
// let person;

/*
2. Que tipo de dado é a variável acima?
*/
// console.log(typeof person); // undefined

/*
3.Declare uma variável person e atribua valores para cada um dos dados:
    name: string
    age: Number (integer)
    weight: Number (float)
    isAdmin: Boolean
    isAMan: boolean
*/
// const person = { nome: "Paulo", age: 30, weight: 64, isAdmin: true, isAMan: true };

/*
4. A variável human abaixo é de que tipo de dados?
    let human = {}

    4.1. Atribua a ela as mesmas propriedades e valores do exercício 3.
    4.2. Mostre no console a seguinte mensagem:
        O humano <name> tem o peso <weight> kg.
*/
// let human = {};
// console.log(typeof human); // object
// human = { nome: "Paulo", age: 30, weight: 64, isAdmin: true, isAMan: true };
// console.log(`O humano ${human.nome} tem o peso ${human.weight} kg.`);

/*
5. Declare uma variável do tipo Array, de nome humans e atribua a ela nenhum valor, ou seja, somente o Array vazio.
*/
// let humans = [];

/*
6. Reatribua valor para a variável da questão 5, colocando dentro dela o objeto human da questão 4.
    (Não copiar e colocar o objeto, mas usar o objeto criado e inserir ele no Array)
*/
// humans = [human];

/*
7. Coloque no console o valor da posição zero do Array acima
*/
// console.log(humans[0]);

/*
8. Crie um novo objeto newHuman e coloque na posição 1 do Array humans
*/
// const newHuman = { nome: "Isabela", age: 0, weight: 7.5, isAdmin: false, isAMan: false };
// humans[1] = newHuman;

/*
9. Sem rodar o código responda o resultado da saída abaixo:

    9.1.
    console.log(a);
    var a = 1;
    // undefined

    9.2.
    let a;
    console.log(a);
    {
        let a = 2;
        console.log(a);
    }
    console.log(a);
    // undefined
    // 2
    // undefined

    9.3
    console.log(b);
    {
        let b = 3;
        console.log(b);
    }
    console.log(b);
    // ReferenceError

    9.4
    const c = 10;
    {
        console.log(c);
        const c = 20;
        console.log(c);
    }
    // ReferenceError
*/
