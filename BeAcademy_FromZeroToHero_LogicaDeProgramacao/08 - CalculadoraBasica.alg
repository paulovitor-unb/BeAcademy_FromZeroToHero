Algoritmo "CalculadoraBasica"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Calculadora para operacoes de soma(+), subtracao(-), multiplicacao(*) e divisao(/)
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para valores e operacao a realizar
   valor1, valor2: real
   operacao: caractere

Inicio
   // Solicita valores e operacao a realizar
   escreva("Digite o primeiro valor: ")
   leia(valor1)
   escreva("Digite o segundo valor: ")
   leia(valor2)
   escreval("Selecione o tipo de operacao:")
   escreval("Digite + para soma")
   escreval("Digite - para subtracao")
   escreval("Digite * para multiplicacao")
   escreval("Digite / para divisao")
   escreva("Operacao: ")
   leia(operacao)

   // Realiza operacao e mostra resultado na tela
   escreval()
   escreva("Resultado: ")

   escolha operacao
   caso "+"
      escreval(valor1 + valor2)
   caso "-"
      escreval(valor1 - valor2)
   caso "*"
      escreval(valor1 * valor2)
   caso "/"
      escreval(valor1 / valor2)
   outrocaso
      escreval("Operacao invalida!")
   fimescolha
Fimalgoritmo