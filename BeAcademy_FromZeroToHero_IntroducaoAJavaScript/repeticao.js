/*
// for
// for(início; condição; iteração)
for (let i = 1; i <= 10; i++) {
    console.log(i);
}
for (let i = 10; i >= 1; i--) {
    if (i === 8) {
        continue;
    } else if (i === 5) {
        break;
    }
    console.log(i);
}

// while
let interator = 1;
while (interator <= 10) {
    console.log(interator);
    
    // Incremento
    interator++;
}

// for of
let numbers = [2, 5, 3, 7, 4];
for (number of numbers) {
    if (number > 4) {
        console.log(number);
    }
}

let names = ["Maria", "Pedro", "João", "Jenifer", "Luan"];
// num = numbers (FOR OF)
// For OF (Valores do Array)
for (nome of names) {
    console.log(nome);
}

// for in
let animal = {
    name: "leão",
    weight: 20,
    age: 4,
};
for (item in animal) {
    // Mostra os valores dentro das propriedades
    console.log(animal[item]);
}
// Mostra todo o objeto
console.log(animal);
// Mostra valor individual de propriedade de um objeto
console.log(animal.name);
// ou
console.log(animal["age"]);

let arrayName = ["Jenifer", "Luan", "Regis", "Moacir"];

for (index in arrayName) {
    console.log(index); // index -> posição no array
    console.log(arrayName[index]); // elemento na posição index
}
// Mostra todo o array
console.log(arrayName);
// Mostra valor elemento de um array
console.log(arrayName[2]);
*/
