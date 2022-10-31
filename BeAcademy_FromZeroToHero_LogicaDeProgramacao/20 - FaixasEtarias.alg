Algoritmo "FaixasEtarias"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita uma serie de idades e calcula numero de menores e idosos
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis idade, numero de menores (idade < 18) e numero de idosos (idade >= 60)
   idade, numMenores, numIdosos: inteiro

Inicio
   // Inicia contadores de faixas etarias
   numMenores <- 0
   numIdosos <- 0

   // Inicia laco de repeticao ate usuario interromper o laco (idade = -99)
   repita
      // Solicita idade (ou interrompe programa)
      escreva("Digite a idade: ")
      leia(idade)
      se idade = -99 entao
         interrompa
      fimse

      // Atualiza valores de faixas etarias
      se idade < 18 entao
         numMenores <- numMenores + 1
      senao
         se idade >= 60 entao
            numIdosos <- numIdosos + 1
         fimse
      fimse
   ate falso

   // Imprime valores de pessoas nas faixas etarias (menores e idosos)
   escreval()
   escreval("Total de pessoas com menos de 18 anos(menores): ", numMenores)
   escreval("Total de pessoas com mais de 60 anos(idosos): ", numIdosos)
Fimalgoritmo