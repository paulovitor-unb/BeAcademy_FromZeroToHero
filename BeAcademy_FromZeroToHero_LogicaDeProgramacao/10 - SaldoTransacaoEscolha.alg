Algoritmo "SaldoTransacaoEscolha"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita saldo inicial + valor + tipo de transacao e calcula o saldo final
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para saldo, valor da transacao e tipo de transacao
   saldo, valor: real
   transacao, banco, agencia, conta: caractere

Inicio
   // Solicita saldo, valor da transacao e tipo da transacao
   escreva("Digite seu saldo inicial: ")
   leia(saldo)
   escreva("Digite o valor da transacao: ")
   leia(valor)
   escreval("Selecione o tipo de transacao:")
   escreval("Digite D para deposito")
   escreval("Digite S para saque")
   escreval("Digite T para transferencia")
   escreva("Tipo de transacao: ")
   leia(transacao)
   transacao <- maiusc(transacao)

   // Solicita agencia e conta para transferencia
   se transacao = "T" entao
      escreval()
      escreval("Informe dados para transferencia:")
      escreva("Digite banco: ")
      leia(banco)
      escreva("Digite agencia: ")
      leia(agencia)
      escreva("Digite conta para transferencia: ")
      leia(conta)
   fimse

   // Mostra informacoes apos transacao
   escreval()
   escreval("Saldo inicial: R$", saldo)

   escolha transacao
   caso "D"
      escreval("Valor do deposito: R$", valor)
      escreval()
      escreval("Saldo final: R$", saldo + valor)
   caso "S"
      escreval("Valor do saque: R$", valor)
      escreval()
      escreval("Saldo final: R$", saldo - valor)
   caso "T"
      escreval("Valor da transferencia: R$", valor)
      escreval()
      escreval("Saldo final: R$", saldo - valor)
      escreval()
      escreval("Conta de destino:")
      escreval("Banco: ", banco)
      escreval("Agencia: ", agencia)
      escreval("Conta: ", conta)
   outrocaso
      escreval()
      escreval("Transacao invalida!")
      escreval()
      escreval("Saldo final: R$", saldo)
   fimescolha
Fimalgoritmo