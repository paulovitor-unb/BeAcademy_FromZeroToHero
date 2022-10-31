Algoritmo "AlunoNotas"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Armazena nome e notas de aluno e checa foi aprovado ou reprovado
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para nome, notas e media do aluno
   nome: caractere
   notas: vetor[0..1] de real
   media: real

Inicio
   // Solicita nome e notas do aluno
   escreva("Digite o nome do aluno: ")
   leia(nome)
   escreva("Digite a primeira nota do aluno: ")
   leia(notas[0])
   escreva("Digite a segunda nota do aluno: ")
   leia(notas[1])
   escreval()

   // Calcula media
   media <- (notas[0] + notas[1]) / 2

   // Mostra informacoes do aluno
   escreval("Aluno: ", nome)
   escreval("Nota 1:", notas[0])
   escreval("Nota 2:", notas[1])
   escreval("Media:", media)
   escreval()
   se media >= 6 entao
      escreval("Aluno aprovado!")
   senao
      escreval("Aluno reprovado!")
   fimse
Fimalgoritmo