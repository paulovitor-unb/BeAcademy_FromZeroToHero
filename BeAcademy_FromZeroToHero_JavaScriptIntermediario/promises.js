/* Promises */
// setTimeout(() => console.log("Resposta"), 5000);

function show() {
    setTimeout(() => {
        console.log("Oi!");
    }, 2000);

    console.log("Até logo!");
}

// show();

function handlePromise(resolve, reject, n) {
    n > 10 ? resolve() : reject();
}

const minhaPromise0 = new Promise((resolve, reject) =>
    handlePromise(resolve, reject, 9)
);

minhaPromise0
    .then(() => console.log("P0 - Resolve"))
    .catch(() => {
        // console.log("P0 - Reject");
    })
    .finally(() => {
        // console.log("P0 - Finally!");
    });

const minhaPromise1 = new Promise((resolve, reject) =>
    handlePromise(resolve, reject, 11)
);

minhaPromise1
    .then(() => {
        // console.log("P1 - Resolve");
    })
    .catch(() => console.log("P1 - Reject"))
    .finally(() => {
        // console.log("P1 - Finally!");
    });

/* fetch() */
const firstUser = (id) => {
    fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
        .then((response) => response.json())
        .then((data) => {
            // console.log(`O título é "${data.title}"`);
        });
};

firstUser(1);

const cep = "01001000";
fetch(`https://viacep.com.br/ws/${cep}/json/`)
    .then((response) => response.json())
    .then((data) => {
        // console.log(`Bairro: ${data.bairro}; Logradouro: ${data.logradouro}`);
    });

/*async/await */
const secondUser = async (id) => {
    let response = await fetch(
        `https://jsonplaceholder.typicode.com/todos/${id}`
    );
    let data = await response.json();
    // console.log(`O título é "${data.title}"`);
};

secondUser(2);
