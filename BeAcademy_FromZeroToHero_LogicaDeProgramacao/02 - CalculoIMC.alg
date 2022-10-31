Algoritmo "CalculoIMC"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita altura + peso e calcula o IMC
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variaveis para nome, altura e peso do usuario
   nome: caractere
   altura, peso: real
   

Inicio
   // Solicita dados do usuario
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite sua altura em metros: ")
   leia(altura)
   escreva("Digite seu peso em quilogramas: ")
   leia(peso)

   // Mostra dados na tela e calcula o IMC
   escreval()
   escreval("Nome: ", nome)
   escreval("Altura:", altura, "m, Peso:", peso, "kg")
   escreval()
   escreval("Valor do IMC:", peso / (altura ^ 2))
Fimalgoritmo