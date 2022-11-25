# BeAcademy_FromZeroToHero_JavaScriptIntermediario

Repositório para o módulo JavaScript Intermediário do Bootcamp From Zero To Hero da Be Academy

## Variáveis

Variáveis são contêineres na memória para armazenar valores

-   var - 1995 a 2015
-   let e const - 2015 -> ES6 (ECMAScript 6)

### Declarando uma variável

```
let x;
```

### Atribuindo valor

```
let x = 5;
const y = 6;
const z = x + y;
```

### Variáveis com let

-   Variáveis definidas com let não podem ser redeclaradas.
-   Variáveis definidas com let devem ser declaradas antes do uso.
-   Variáveis definidas com let têm block scope.

### Variáveis com const

-   Variáveis definidas com const não podem ser redeclaradas.
-   Variáveis definidas com const não podem ser reatribuídas.
-   Variáveis definidas com const têm block scope.

## Template Strings

-   Também conhecido como "Template Literals".
-   É uma forma facilitada de interpolar variáveis ou expressões em um texto.
-   Utiliza `` (crases) em vez de '' ou "" (aspas) para strings.

```
let firstName = "John";
let lastName = "Doe;
let text = `Welcome ${firstName}, ${lastName}!`;
```

## Arrow functions

-   Uma arrow function é uma alternativa compacta a uma expressão de função tradicional, com algumas diferenças semânticas e limitações deliberadas no uso.

```
function sum(a) {
    return a + 100;
}

const sum = a => a + 100;
```

## for loop

-   Utilizado para fazer algo repetidamente até que uma condição seja atingida.

```
// Retorna de 0 a 9 no console
for (let numero = 0; numero < 10; numero++) {
    console.log(numero);
}
```

## Prototype e Herança

-   O prototype é um objeto adicionado a uma criada.
-   Dá acesso aos métodos e propriedades do responsável por criar este objeto.
-   O prototype de um construtor permite que função quando esta é protótipo do construtor seus membros sejam compartilhados por todas as instâncias. É o mesmo que dizer que as instâncias herdam os membros de uma função construtora.
-   Assim, cada objeto concreto (instância) vai ter seus próprios dados.
-   Para manipular os dados conforme as regras de negócio, todas as instâncias terão acesso aos métodos do prototype.

## Orientação a objetos

-   Orientação a Objetos é um paradigma utilizado para modelar coisas/objetos do mundo real que queremos representar dentro de uma aplicação.
-   Em um software, estamos sempre representando de forma abstrata, objetos concretos do mundo real, ex.: um cliente, um aluno, um produto, etc...
-   Importante salientar que um objeto concreto no mundo real pode apresentar infinitas características. Porém, trazemos para nosso software apenas aquelas que fazem sentido para a regra de negócio.
-   Sendo assim, para um cadastro em um sistema escolar, o tipo sanguíneo ou a altura do aluno (objeto do mundo concreto) não tenha utilidade. Porém, para o cadastro em uma clínica médica, estes elementos devem ser levados em consideração.
-   Um dos pilares da orientação a objetos é a classe.
-   Com ela, podemos criar uma abstração de um objeto do mundo real e a partir desta, instanciar, ou seja, gerar um objeto concreto em nossa aplicação.
-   É o exemplo do cadastrado de alunos em um sistema escolar.
-   Obtemos as características conforme as regras de negócios de nossa aplicação.
-   Após isto, podemos instanciar para que o software guarde e nos retorne uma lista de alunos ou um aluno em específico com os dados que precisamos.
-   Conforme explicado, as classes são utilizadas para gerar instâncias de um objeto podendo-se reutilizar código através da herança.

### Classes

#### Funções construtoras

-   São utilizadas para instanciar objetos. Assim, é possível trabalhar com a reutilização do código.

```
const Foo = function(x) {
    this.x = x
}

const foo = new Foo("x")
```

#### Classes

-   Classes em JavaScript são introduzidas no ECMAScript 2015.
-   Elas trazem uma maneira mais simples e clara para criar objetos e lidar com herança.
-   São funções especiais que agem como funções construtoras.
-   Sintaxe:

```
class Person {
    constructor {}
}
```

#### Herança

-   Com uma classe, podemos implementar as características abstratas de um objeto. A partir dela, podemos gerar diversos objetos reutilizando as características.
-   Com as classes podemos instanciar objetos e também podemos instanciar outras classes. Com isto, teremos classes que são extensões de outra classe.
-   Então uma classe pode herdar propriedades e métodos da classe "pai".
-   Exemplo:

    -   Em um cadastro de candidatos a um concurso, temos os dados necessários de cada candidato. Todos eles têm nome, cpf. Então todos os candidatos são cadastrados com estas propriedades. Com isso, é possível herdar da classe principal, todos estes dados.
    -   Porém, apenas no caso de candidatos homens, é necessário ter cadastrado o comprovante de serviço militar obrigatório.

## Callbacks

-   Trata-se de uma função que será executada quando algum evento acontecer ou quando algum código chegar a um estado esperado.
-   Isto quer dizer que esta função é assíncrona, pois não será executada imediatamente. Neste caso, a aplicação continuará funcionando enquanto a função espera o momento da sua execução.
-   Exemplos:
    -   Uma função a ser execuatada após um dado ser salvo no banco de dados;
    -   Uma função que executa após os dados serem retornados de uma chamada à uma API;
    -   Uma função que será execuatada após o click do usuário em um botão no site.
-   Na maioria dos casos, uma função de callback é passada como argumento de outra função.

```
function hello(name) {
    console.log(name);
}

function helloUser(callback) {
    callback("Marcelo");
}

helloUser(hello);
```

## Promises

-   O Javascript permite ter comportamentos síncrono e assíncrono.
    -   Síncrono: Espera a tarefa acabar para continuar com a próxima.
    -   Assíncrono: Parte para a próxima tarefa antes da anterior terminar. A tarefa será executada e quando terminada será colocada em fila.
-   Com o comportamento assíncrono, é possível carregar um site ou executar uma aplicação enquanto alguma tarefa ainda não terminou. Esta tarefa continua sendo executada "por de baixo dos panos", enquanto que as outras não ficam travadas esperando ela terminar.

-   As funções no JavaScript são executadas na sequência em que são
    chamadas e não na sequência em que são definidas.

```
function myFirst() {
    console.log("Hello");
}

function mySecond() {
    console.log("Goodbye");
}

mySecond(); // Goodbye
myFirst(); // Hello
```

-   O objeto Promise representa a eventual conclusão (ou falha) de uma operação assíncrona e seu valor resultante.
-   Estados de uma Promise:

    -   Pending: estado inicial ou pendente.
    -   Fulfilled ou Resolved: operação concluída com sucesso.
    -   Rejected: operação falhou.

-   Promise é uma função construtora, e por isso, é um objeto que permite modelar o comportamento assíncrono do Javascript.
-   Ela instancia "promessas", ou seja, tarefas que podem levar um tempo maior para terminar em relação a outras.
-   Isto acontece em alguns casos quando por exemplo:

    -   Temos que receber dados de alguma API;
    -   Uma API precisa receber dados de outra API;
    -   Uma API faz uma requisição a um banco de dados;

-   Enquanto não temos as respostas para estas requisições, nosso software não precisa ter seu funcionamento travado.
-   Nestes casos, temos uma promessa de que os dados requisitados chegarão.

### Métodos de uma Promise

-   `then()`: Permite que se realize alguma tarefa após a Promise ser resolvida.
-   `catch()`: Caso a Promise não seja resolvida por algum motivo, será invocado o método catch.
-   `finally()`: Será invocado independente do resultado da Promise.

### Método fetch()

-   É um método que retorna uma Promise.
-   Exemplo:

```
function getUser(id) {
    const user = fetch(`url da api/${id}`)
        .then((response) => response.json())
        .then((data) => console.log(data));
}
```

### Método Promise.all()

-   Utilizado quando há várias promessas que devem ser resolvidas

```
const endpoints = [
    "https:/lapi.com/api/user/l",
    "https:/lapi.com/api/user/2",
    "https:/lapi.com/api/user/3",
    "https:/lapi.com/api/user/4",
];

const promises = endpoints.map(
    (url) => fetch(url)
        .then((res) => res.json())
);

Promise.all(promises)
    .then((body) => console.log(body.name));
```

## Promises (async/await)

-   async e await são palavras-chave do Javascript.
-   Foram implementadas a partir do ES2017.
-   Trazem uma sintaxe que simplifica a manipulação da programação assíncrona no Javascript, facilitando o fluxo de escrita e leitura do código.
-   Com elas, se tornou possível escrever código assíncrono, porém lido e estruturado de forma síncrona.
-   Podemos definir uma função como async e usar await antes de qualquer expressão que retorne uma Promise.

### async

-   A função definida como async irá esperar até que a Promise seja resolvida.
-   A palavra chave async indica que a função tem comportamento assíncrono e que se deve esperar sua resolução antes do programa continuar.

### await

-   O await indica a promise que devemos esperar.

## try/catch

-   Ao executar o código JavaScript, diferentes erros podem ocorrer.
-   Podem ser erros de codificação do programador, erros devido a requisição de dados e outras coisas imprevisíveis como queda de um servidor ou de uma rede em se tratando de uma promise.
-   Estes erros podem ser tratados com as palavras a seguir:
    -   `try`: determina um bloco de código que será executado na promise;
    -   `catch`: determina um bloco de código no qual os erros serão tratados;
    -   `finally`: determina um bloco de código que será executado qualquer que seja o resultado da promise;
    -   `throw`: define um erro customizado.

### Objeto Error

-   O construtor Error() cria um objeto de erro.
-   Podemos utilizar Error() ou new Error()
-   A declaração throw lança uma exceção previamente definida.
-   A execução da função será interrompida e as instruções após o throw não serão executadas.
-   Também podemos customizar o erro instanciando uma classe a ser chamada toda vez que um erro acontecer na aplicação

### try/catch aninhado

-   Não é boa prática

```
try
    // do something
} catch (error0) {
    try {
        // do something in the same line, but being less ambitious
    } catch (error1) {
        try {
            // do the minimum acceptable
        } catch (error2) {
            // more try/catches? ...
        }
    }
}
```

## Rest / Spread

### Rest parameters

-   Permite trabalhar com uma quantidade indefinida de parâmetros em uma função ou de elementos em um array.
-   Em uma função, o rest permite capturar os argumentos:

```
function getSum(...args) {
    let total = 0;

    for (const arg of args) {
        total += arg;
    }

    return total;
}
```

### Spread operator

-   Permite expandir uma expressão recebendo múltiplos argumentos ou elementos.
-   Podemos utilizar para concatenar(merge) arrays

```
const arr = [1, 2, 3];
const arr2 = [...arr, 4];

const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const mergeArrays = [...array1, ...array2];
```

### Destructuring

-   A desestruturação nos permite extrair dados de arrays e objetos e defini-los em novas variáveis.

#### Destructuring Objetos

```
const carro = {
    marca: "Fiat",
    ano: 2018,
    portas: 4,
};

const {marca, ano} = carro;
```

#### Destructuring arrays

```
const frutas = ["Banana", "Uva", "Morango"];
const [primeira, segunda, terceira] = frutas;
```

## Recursão

-   É o ato de uma função chamar a si mesma.
-   A recursão é bastante usada para resolver problemas que contêm subproblemas menores, dividr um problema complexo em problemas menores, fazer uma contagem regressiva ou uma contagem até que certo valor seja atingido.
-   Este tipo de função precisa de uma condição para que ela pare de chamar a si mesma. Caso contrário entrará em um "looping" infinito.
-   Porém, a técnica de recursão não é uma boa prática, pois deixa o código complexo de se entender ou muito verboso e de difícil manutenção.
-   É sempre preferível alternativas mais modernas como, por exemplo, o uso de laços de repetição.

```
function recurse() {
    if (condition) {
        recurse();
    else {
        // stop calling recurse()
    }
}
```

## Default parameters

-   Ao definir parâmetros padrões para uma função, podemos definir valores caso nenhum valor for passado ou este for indefinido.

```
function say(message = "Hi") {
    console.log(message);
}

say(); // "Hi"
say("Hello"); // "Hello"
```
