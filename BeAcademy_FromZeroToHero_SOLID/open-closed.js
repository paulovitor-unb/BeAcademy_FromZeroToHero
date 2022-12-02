/* O - Open/Closed Principle */
// Se mudar alguma coisa fora, não precisa ter que mudar dentro

class Tax {
    constructor(product, price) {
        this.product = product;
        this.price = price;
    }

    totalPrice(tax) {
        console.log(`O valor total é de R$${this.price + tax},00`);
    }
}

const taxes = [
    new Tax("Snes", 10),
    new Tax("Xbox", 20),
    new Tax("Playstation", 30),
];

function calculate(taxes) {
    taxes.forEach((tax) => console.log(tax.totalPrice(10)));
}

//calculate(taxes);
