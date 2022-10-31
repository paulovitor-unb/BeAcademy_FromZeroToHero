Algoritmo "ListaProdutos"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Armazena nomes e precos de produtos e mostra lista de produtos
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para nome e preco dos produtos + contador(i)
   nomes: vetor[0..9] de caractere
   precos: vetor[0..9] de real
   i: inteiro

Inicio
   // Solicita nome e preco dos produtos na lista
   para i de 0 ate 9 faca
      escreva("Digite o nome do produto: ")
      leia(nomes[i])
      escreva("Digite o preco do produto: ")
      leia(precos[i])
      escreval()
   fimpara

   // Mostra lista de produtos na tela
   escreval("Lista de produtos:")
   para i de 0 ate 9 faca
      escreval("Produto: ", nomes[i], ", Preco:", precos[i])
   fimpara
Fimalgoritmo