/* L - Liskov Substitution Principle */
// A ideia principal do princípio de substituição de Liskov é que qualquer função/módulo que interaja com uma classe também deve ser capaz de interagir com todas as subclasses dessa classe.
// Isso significa essencialmente que uma classe é intercambiável com suas subclasses.

class FlyingBirds {
    fly() {
        console.log("Posso voar");
    }
}

class SwimmingBird {
    swim() {
        console.log("Posso nadar");
    }
}

class Duck extends FlyingBirds {}

class Penguin extends SwimmingBird {}

function makeFlyingBirdFly(bird) {
    bird.fly();
}

function makeSwimmingBirdSwim(bird) {
    bird.swim();
}

const pato = new Duck();
const pinguim = new Penguin();

// makeFlyingBirdFly(pato);
// makeSwimmingBirdSwim(pinguim);
