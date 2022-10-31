Algoritmo "Planilha"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Recebe dados em uma planilha + calcula somas de linhas e colunas
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para planilha e contadores(i, j)
   planilha: vetor[0..4, 0..3] de real
   i, j: inteiro

Inicio
   // Solicita valores da planilha
   para i de 0 ate 3 faca
      para j de 0 ate 2 faca
         escreva("Digite o numero da linha", i, ", coluna", j, ": ")
         leia(planilha[i, j])
      fimpara
   fimpara

   // Calcula soma de linhas e colunas
   para i de 0 ate 3 faca
      para j de 0 ate 2 faca
         planilha[i, 3] <- planilha[i, 3] + planilha[i, j]
         planilha[4, j] <- planilha[4, j] + planilha[i, j]
         planilha[4, 3] <- planilha[4, 3] + planilha[i, j]
      fimpara
   fimpara

   // Mostra planilha preenchida
   para i de 0 ate 4 faca
      para j de 0 ate 3 faca
         escreva(planilha[i, j], "   ")
      fimpara
      escreval()
   fimpara
Fimalgoritmo