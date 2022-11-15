/*
// if / else (se / senão)
let num = 10;
let num2 = 20;
let isAdmin = true;

// < > <= >= == === != !==
if (num >= 5) {
    console.log("Sou maior que 5");
} else {
    console.log("Não sou maior que 5");
}

// &&(AND) ||(OR) !(NOT)
if (num >= 5 && num2 >= 10) {
    console.log("Ambos verdadeiros");
} else {
    console.log("Pelo menos um é falso");
}

if (num >= 5 || num2 <= 10) {
    console.log("Pelo menos um é verdadeiro");
} else {
    console.log("Ambos falsos");
}

if (!isAdmin) {
    console.log("Acesso negado!");
} else if (num < 10) {
    console.log("Senha inválida!");
} else {
    console.log("Acesso concedido!");
}

// switch
let myExpression = "b";
switch (myExpression) {
    case "a":
        console.log("Apertou A");
        break;
    case "b":
        console.log("Apertou B");
        break;
        case "c":
            console.log("Apertou C");
            break;
            default:
                console.log("Apertou outra tecla", myExpression);
                break;
            }
            
            // Calculadora com switch
            function calc(num1, operacao, num2) {
                switch (operacao) {
                    case "+":
                        console.log(num1 + num2);
                        break;
                        case "-":
                            console.log(num1 - num2);
                            break;
                            case "*":
                                console.log(num1 * num2);
            break;
            case "/":
                console.log(num1 / num2);
                break;
                case "%":
                    console.log(num1 % num2);
                    break;
                    default:
                        console.log("Operação inválida");
                        break;
    }
}
calc(4, "*", 4);
calc(8, "/", 2);
calc(12, "+", 12);
calc(13, "a", 7);
*/

/*
// throw e try/catch/finally
function myAge(myage) {
    if (!myage) {
        throw "Você precisa colocar a idade";
    }
    console.log("Eu executei depois do erro!");
}

try {
    myAge();
    console.log("Já tratei e deu certo");
} catch (error) {
    console.log(error);
} finally {
    console.log("Programa continua");
}
*/
