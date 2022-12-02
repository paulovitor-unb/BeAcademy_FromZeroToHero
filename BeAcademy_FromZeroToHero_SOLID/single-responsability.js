/* S - Single Responsability Principle */
// Criar uma classe para cada regra de negócio/responsabilidade

class WeightAdviser {
    constructor(user, weight) {
        this.user = user;
        this.weight = weight;
    }

    adviser(expectedWeight) {
        if (this.weight >= expectedWeight) {
            // this.weightAlert();
            weightAlert(this.user);
        }
    }

    // Quebra o princípio
    /*
    weightAlert() {
        console.log(`${this.user} está acima do peso`);
    }
    */
}

// Solução para quebra do princípio
function weightAlert(user) {
    // console.log(`${user} está acima do peso`);
}

const marcelo = new WeightAdviser("Marcelo", 91);
marcelo.adviser(90);

const joao = new WeightAdviser("João", 89);
joao.adviser(90);
