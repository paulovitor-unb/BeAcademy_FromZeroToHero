Algoritmo "SaldoDeposito"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita saldo inicial + deposito e calcula o saldo final
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variaveis para saldo e valor do deposito
   saldo, deposito: real

Inicio
   // Solicita saldo e valor do deposito
   escreva("Digite seu saldo inicial: ")
   leia(saldo)
   escreva("Digite o valor do deposito: ")
   leia(deposito)

   // Mostra os valores na tela
   escreval()
   escreval("Saldo inicial: R$", saldo)
   escreval("Valor do deposito: R$", deposito)
   escreval()
   escreval("Saldo final: R$", saldo + deposito)
Fimalgoritmo