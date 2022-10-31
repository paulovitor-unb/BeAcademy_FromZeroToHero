Algoritmo "SaquesConsecutivos"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Inicia saldo com R$ 1000,00 e realiza saques ate saldo ser insuficiente
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis saldo valor de saques
   saldo, saque: real

Inicio
   // Inicia saldo e valor de saques
   saldo <- 1000
   saque <- 150
   escreval("Saldo inicial: R$", saldo)
   escreval()

   // Inicia laco de repeticao ate saldo ser insuficiente para mais saques
   repita
      // Realiza saques
      saldo <- saldo - saque
      escreval("Saldo apos saque: R$", saldo)
   ate saldo < saque

   // Imprime valores de pessoas nas faixas etarias (menores e idosos)
   escreval()
   escreval("Saldo insuficiente para continuar saques!")
Fimalgoritmo