Algoritmo "SomatorioAte100"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Calcula o somatorio dos 100 primeiros numeros inteiros
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis soma e contador(i)
   soma, i: inteiro

Inicio
   // Inicia somatorio e contador
   soma <- 0
   i <- 1

   // Inicia laco de repeticao de 1 ate 100
   repita
      // Atualiza soma e incrementa o contador
      soma <- soma + i
      i <- i + 1
   ate i > 100

   // Imprime valores de pessoas nas faixas etarias (menores e idosos)
   escreval()
   escreval("Total da soma de 1 ate 100: ", soma)
Fimalgoritmo