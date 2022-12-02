/* I - Interface Segregation Principle */
// A ideia é segregar as interfaces e deixá—las menores.
// Pode ser aplicado mesmo não tendo interfaces no Javascript, utilizando classes e herança

class ProductsEntity {
    constructor(name, dept) {
        this.name = name;
        this.dept = dept;
    }
}

class TechProduct extends ProductsEntity {
    constructor(name, dept) {
        super(name, dept);
    }
}

class FoodProduct extends ProductsEntity {
    constructor(name, dept, validDate) {
        super(name, dept);
        this.validDate = validDate;
    }
}

const xbox = new TechProduct("Xbox", "Tecnologia");
const pipoca = new FoodProduct("Pipoca", "Alimentícios", "NOV/2023");

//console.log(xbox);
//console.log(pipoca);
