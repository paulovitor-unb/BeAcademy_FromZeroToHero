/* D - Dependency Inversion Principle */

class Purchase {
    constructor(creditCard) {
        this.creditCard = creditCard;
    }

    payment() {
        // console.log(`Pagou com ${this.creditCard.brand}`);
    }
}

// Quebra o princípio
/*
class Visa {
    constructor() {
        this.brand = "Visa";
    }
}

class Master {
    constructor() {
        this.brand = "MasterCard";
    }
}

const visa = new Visa();
const bike1 = new Purchase(visa).payment();

const master = new Master();
const bike2 = new Purchase(master).payment();
*/

// Solução para quebra do princípio
class CreditCard {
    constructor(brand) {
        this.brand = brand;
    }
}

const visa = new CreditCard("Visa");
const bike1 = new Purchase(visa).payment();

const master = new CreditCard("MasterCard");
const bike2 = new Purchase(master).payment();
