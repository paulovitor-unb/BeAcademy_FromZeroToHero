Algoritmo "MatrizQuadrada"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Armazena matriz quadrada e imprime soma das diagonais pricipal e secundaria
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para matriz, soma das diagonais e contador(i)
   matriz: vetor[0..2, 0..2] de real
   principal, secundaria: real
   i, j: inteiro

Inicio
   // Inicializa soma das diagonais
   principal <- 0
   secundaria <- 0

   // Solicita valores da matriz
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("Digite o numero da linha", i, ", coluna", j, ": ")
         leia(matriz[i, j])
      fimpara
   fimpara

   // Calcula soma das diagonais
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         se i = j entao
            principal <- principal + matriz[i, j]
         fimse
         se (i + j) = (3 - 1) entao
            secundaria <- secundaria + matriz[i, j]
         fimse
      fimpara
   fimpara

   // Mostra soma das diagonais
   escreval()
   escreval("Soma da diagonal principal:", principal)
   escreval("Soma da diagonal secundaria:", secundaria)
Fimalgoritmo