Algoritmo "ClassificacaoIMC"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita altura + peso, calcula o IMC e classifica conforme tabela
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variaveis para altura e peso
   altura, peso, imc: real


Inicio
   // Solicita altura e peso
   escreva("Digite a altura em metros: ")
   leia(altura)
   escreva("Digite o peso em quilogramas: ")
   leia(peso)

   // Calcula IMC
   imc <- peso / (altura ^ 2)

   // Classifica o IMC conforme tabela
   escreval()
   escreval("Valor do IMC:", imc)

   se imc < 19 entao
      escreval("Classificacao: Abaixo do Peso")
   senao
      se imc < 25 entao
         escreval("Classificacao: Peso Normal")
      senao
         se imc < 30 entao
            escreval("Classificacao: Sobrepeso")
         senao
            se imc < 40 entao
               escreval("Classificacao: Obesidade Tipo I")
            senao
               escreval("Classificacao: Obesidade Morbida")
            fimse
         fimse
      fimse
   fimse
Fimalgoritmo