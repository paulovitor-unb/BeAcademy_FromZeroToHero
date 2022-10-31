Algoritmo "TabuadaPara"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita numero e apresenta a tabuada dele
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis numero e i(contador)
   numero: real
   i: inteiro

Inicio
   // Solicita numero
   escreva("Digite um numero: ")
   leia(numero)

   // Apresenta tabuada do numero dado pelo usuario
   escreval()
   escreval("Tabuada do", numero, ":")
   para i de 1 ate 10 faca
      escreval(numero, " *", i, " =", numero * i)
   fimpara
Fimalgoritmo