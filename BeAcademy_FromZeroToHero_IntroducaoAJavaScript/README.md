# BeAcademy_FromZeroToHero_IntroducaoAJavaScript

Repositório para o módulo Introdução a JavaScript do Bootcamp From Zero To Hero da Be Academy

## Entendendo a Sintaxe

-   É necessário seguir regras de linguagem
-   Combinações de elementos e escrita
-   Conjunto de termos e expressões
-   Agrupamento de palavras

## Tipo de dados do Javascript

### Tipo String

-   Cadeias de caracteres -> Textos
-   Regras:
    -   "texto" (aspas duplas)
    -   'texto' (aspas simples)
    -   \`texto\` (crases -> template literals ou template strings
-   Documentação: [String (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/String)

### Tipo Number

-   Números
-   Tipos:
    -   33 -> inteiros ou integer
    -   12.5 -> reais, decimais ou float
    -   NaN -> Not a Number
    -   Infinity -> Infinito
-   Documentação: [Number (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/Javascript/Reference/Global_Objects/Number)

### Tipo Boolean

-   Criado pelo George Boole
-   Somente 2 valores:
    -   true —> verdadeiro
    -   false -> falso
-   Documentação: [Boolean (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Boolean)

### Tipo/Valor undefined

-   indefinido
-   Documentação: [undefined (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/undefined)

### Valor null

-   nulo
-   objeto que não possui valor
-   Diferente de indefinido
-   Documentação: [null (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/web/Javascript/Reference/Global_Objects/null)

### Tipo Object

-   Objeto que armazena:
    -   Propriedades / Atributos
    -   Funcionalidades / Métodos
    -   Estrutura:
        -   { propriedade: "valor" }
-   Documentação: [Object (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Object)

### Tipo Array (vetor)

-   Lista de valores
-   Agrupamento de dados
-   Estrutura:
    -   ["Carro", 32, "Moto"]
-   Documentação: [Array (MDN Web Docs)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Array)

## Conhecendo e trabalhando com variáveis

### Variáveis

-   Nome, identificação ou apelido dado para algum valor
-   Utiliza espaços da memória ram para armazenar informações
-   Esses valores podem variar de acordo com o tempo ou podem ser constantes
-   Palavras reservadas para construir uma variável
-   Tipos no JavaScript:
    -   var -> variável que pode sofrer mudanças de valor ao longo do código
    -   let -> variável que pode sofrer mudançans de valor ao longo do código, geralmente usado dentro de um escopo (Bloco de código)
    -   const -> variável constante, não pode receber outro valor. Seu valor é fixo em todo o código

### Variáveis fracamente tipadas e dinâmicas

-   O Javascript é uma linguagem fracamente tipada e dinâmica
-   As variáveis não precisam declarar previamente seu tipo de dados
-   Dinâmismo na troca de valores de uma variável

## O que é uma função no Javascript?

-   Uma função no JavaScript é um bloco de código projetado para executar uma tarefa específica.
-   Uma função é executada quando "algo" a invoca (chama).
-   Uma função é definida com a palavra-chave function, seguida por um nome, seguido por parênteses ( ).
    -   Os nomes das funções podem conter letras, dígitos, sublinhados e cifrões (mesmas regras das variáveis).
    -   Os parênteses podem incluir nomes de parâmetros separados por vírgulas: (parâmetrol, parâmetro2)
-   O código a ser executado, pela função, é colocado entre chaves { }
-   Documentação: https://www.w3schools.com/js/js_functions.asp

### Anatomia padrão de uma função:

```
function myFunction() {
    // My code
}
```

### Anatomia de função anônima

```
const myFunction = function () {
    // My code
};
```

### Como executar uma função

```
myFunction();
```

### Função com parâmetros

```
function myFunctionParameters(parameter1, parameter2) {
    // My code
}
```

### Executando função com argumentos

```
myFunctionParameters(argument1, argument2);
```

### Função com return (e parâmetros)

```
function myFunctionReturn(parameter1, parameter2) {
    // My code
    return returnedValue;
}
```

### Executando função com return (e argumentos)

```
const value = myFunctionReturn(argument1, argument2);
```

### Teoria do prato de comida

```
// Vou montar meu prato de comida para almoçar
function almocar(comida1, comida2, comida3) {
    return `Meu almoço teve ${comida1}, ${comida2} e ${comida3}`;
}

// Preciso de um prato para armazenar a comida
const prato = almocar("arroz", "feijão" ,"frango");
console.log(prato);
```

### Arrow Function, maneira mais moderna de criar uma função

```
const arrowFunction = () => {
    console.log("Arrow function");
}

arrowFunction();
```

### Arrow function com parâmetros e retorno

```
const arrowFunction = (num1, num2) => {
    const total = num1 + num2;
    return total;
}

const result = arrowFunction(90, 20);
console.log(result);
```
