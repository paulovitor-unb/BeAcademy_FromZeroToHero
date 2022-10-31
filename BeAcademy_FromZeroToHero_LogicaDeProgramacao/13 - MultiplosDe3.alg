Algoritmo "MultiplosDe3"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Apresenta os multiplos de 3 entre dois numeros dados pelo usuario
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para o intervalo (inicio e fim) e i(contador)
   numeroInicio, numeroFim, i: inteiro

Inicio
   // Solicita os valores de inicio e fim do intervalo
   escreva("Digite o inicio do intervalo: ")
   leia(numeroInicio)
   escreva("Digite o fim do intervalo: ")
   leia(numeroFim)

   // Garante que o intervalo seja crescente
   se numeroInicio > numeroFim entao
      i <- numeroInicio
      numeroInicio <- numeroFim
      numeroFim <- i
   fimse

   // Apresenta os multiplos de 3 entre os numeros dados pelo usuario
   escreval()
   escreval("Multiplos de 3 entre", numeroInicio, " e", numeroFim, ":")
   para i de numeroInicio ate numeroFim faca
      se (i % 3) = 0 entao
         escreval(i)
      fimse
   fimpara
Fimalgoritmo