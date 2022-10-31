Algoritmo "SaldoTransacaoEnquanto"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita saldo inicial + valor + tipo de transacao para um certo numero de transacoes e calcula o saldo final
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para saldo, valor da transacao, tipo de transacao e se quer continuar transacoes
   saldo, valor: real
   transacao, banco, agencia, conta, continuar: caractere

Inicio
   // Solicita saldo inicial
   escreva("Digite seu saldo inicial: ")
   leia(saldo)

   // Valor inicial para comecar transacoes
   continuar <- "S"

   // Realiza transacoes enquanto o usuario desejar
   enquanto maiusc(continuar) = "S" faca
      // Solicita valor da transacao e tipo da transacao
      escreval()
      escreva("Digite o valor da transacao: ")
      leia(valor)
      escreval("Selecione o tipo de transacao:")
      escreval("Digite D para deposito")
      escreval("Digite S para saque")
      escreval("Digite T para transferencia")
      escreval("Digite E para emprestimo")
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
      caso "E"
         saldo <- saldo + valor
         escreval("Valor da transferencia: R$", valor)
         escreval("Saldo: R$", saldo)
      outrocaso
         escreval("Transacao invalida!")
         escreval("Saldo: R$", saldo)
      fimescolha

      // Pergunta se usuario quer realizar mais transacoes
      escreval()
      escreval("Deseja realizar outra transacao:")
      escreval("Digite S para sim")
      escreval("Digite N para nao")
      escreva("Opcao: ")
      leia(continuar)
   fimenquanto

   // Mostra saldo final apos transacoes
   escreval()
   escreval("Saldo final: R$", saldo)
Fimalgoritmo