/* try/catch */
// https://jsonplaceholder.typicode.com/todos/1
async function user() {
    try {
        let response = await fetch(
            // "https://jsonplaceholder.typicode.com/todos/1"
            "https://jsplaceholder.typicode.com/todos/1"
        );
        let data = await response.json();
        console.log(data);
    } catch (error) {
        throw new Error("Erro na requisição");
    } finally {
        console.log("Acabou");
    }
}

// user();

class customError {
    constructor(message) {
        this.message = message;
    }
}

function function1() {
    console.log("function1 executou");
    try {
        console.log("function1 no try");
        // codigoA;
    } catch (error) {
        // console.log("Erro na function1");
        // console.error("Erro na function1", error);
        throw new customError("Erro na function1");
    }
}

// function1();

function function2() {
    console.log("function2 executou");
    try {
        console.log("function2 no try");
    } catch (error) {
        // console.error("Erro na function2", error);
        throw new Error(error);
    }
    // codigoB;
}

function main() {
    console.log("main executou");
    try {
        function1();
        function2();
    } catch (error) {
        console.error("Erro na main --->", error);
    }
}

// main();
