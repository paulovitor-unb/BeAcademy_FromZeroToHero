/* Prototypes */
function Pessoa(nome, idade, peso = null) {
    this.nome = nome;
    this.idade = idade;
    this.peso = peso;
}
// console.log(Pessoa);
// console.log(Pessoa.prototype);

const marcelo = new Pessoa("Marcelo", 44, 80);
// console.log(marcelo);

const joao = new Pessoa("João", 40);
// console.log(joao);

const pessoa = "Marcelo";
// console.log(pessoa);
// console.log(pessoa.__proto__);

const notebook = {
    cor: "preta",
    ano: 2022,
    especifications: function (value) {
        return `Este notebook custa R$${value},00; Cor: ${this.cor}; Ano: ${this.ano}`;
    },
};
// console.log(notebook.cor);

const dell = {
    marca: "Dell",
};

Object.setPrototypeOf(dell, notebook);

// console.log(dell.especifications(5000));

const macBook = {
    marca: "MacBook",
};

Object.setPrototypeOf(macBook, notebook);

// console.log(macBook.especifications(15000));
