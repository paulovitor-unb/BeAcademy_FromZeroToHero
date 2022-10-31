Algoritmo "ClassificacaoIdade"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita idade e e classifica conforme tabela
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variavel para idade
   idade: inteiro

Inicio
   // Solicita idade
   escreva("Digite a idade em anos: ")
   leia(idade)

   // Classifica a idade conforme tabela
   escreval()

   se idade < 18 entao
      escreval("Classificacao: Menor de Idade")
   senao
      se idade < 60 entao
         escreval("Classificacao: Adulto")
      senao
         escreval("Classificacao: Idoso")
      fimse
   fimse
Fimalgoritmo