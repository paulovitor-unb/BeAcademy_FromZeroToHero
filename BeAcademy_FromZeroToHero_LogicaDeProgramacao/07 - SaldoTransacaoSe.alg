Algoritmo "SaldoTransacaoSe"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita saldo inicial + tipo de transacao + valor e calcula o saldo final
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variaveis para saldo, valor e tipo de transacao da transacao
   saldo, valor: real
   transacao: caractere

Inicio
   // Solicita saldo, valor e tipo de transferencia
   escreva("Digite seu saldo inicial: ")
   leia(saldo)
   escreva("Digite o valor da transacao: ")
   leia(valor)
   escreval("Selecione o tipo de transacao:")
   escreval("Digite D para deposito")
   escreval("Digite S para saque")
   leia(transacao)
   transacao <- maiusc(transacao)

   // Mostra o saldo apos transacao
   escreval()
   escreval("Saldo inicial: R$", saldo)
   se transacao = "D" entao
      escreval("Valor do deposito: R$", valor)
      escreval()
      escreval("Saldo final: R$", saldo + valor)
   senao
      se transacao = "S" entao
         escreval("Valor do saque: R$", valor)
         escreval()
         escreval("Saldo final: R$", saldo - valor)
      senao
         escreval("Erro! Tipo de transacao invalido!")
      fimse
   fimse
Fimalgoritmo