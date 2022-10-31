Algoritmo "SaldoTransacaoPara"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita saldo inicial + valor + tipo de transacao para um certo numero de transacoes e calcula o saldo final
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para saldo, valor da transacao, tipo de transacao, numero de transacoes(n) e contador(i)
   saldo, valor: real
   transacao, banco, agencia, conta: caractere
   n, i: inteiro

Inicio
   // Solicita saldo inicial e numero de transacoes
   escreva("Digite seu saldo inicial: ")
   leia(saldo)
   escreva("Digite o numero de transacoes desejado: ")
   leia(n)

   // Realiza n transacoes (se n > 0)
   para i de 1 ate n faca
      // Solicita valor da transacao e tipo da transacao
      escreval()
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
      escolha transacao
      caso "D"
         saldo <- saldo + valor
         escreval("Valor do deposito: R$", valor)
         escreval("Saldo: R$", saldo)
      caso "S"
         saldo <- saldo - valor
         escreval("Valor do saque: R$", valor)
         escreval("Saldo: R$", saldo)
      caso "T"
         saldo <- saldo - valor
         escreval("Valor da transferencia: R$", valor)
         escreval("Saldo: R$", saldo)
         escreval()
         escreval("Conta de destino:")
         escreval("Banco: ", banco)
         escreval("Agencia: ", agencia)
         escreval("Conta: ", conta)
      outrocaso
         escreval("Transacao invalida!")
         escreval("Saldo: R$", saldo)
      fimescolha
   fimpara

   // Mostra saldo final apos transacoes
   escreval()
   escreval("Saldo final: R$", saldo)
Fimalgoritmo