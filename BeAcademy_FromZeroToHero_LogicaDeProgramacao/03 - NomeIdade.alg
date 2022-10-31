Algoritmo "NomeIdade"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita nome + idade e faz operacoes logicas
// Autor      : Paulo Vitor dos Santos
// Data atual : 26/10/2022

Var
   // Variaveis para nome e idade do usuario
   nome: caractere
   idade: inteiro

Inicio
   // Solicita dados do usuario
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite sua idade: ")
   leia(idade)

   // Mostra resultados na tela
   escreval()
   escreval("Nome: ", nome, ", Idade:", idade)
   escreval()
   escreval("Idade maior que 18:", idade > 18)
   escreval("NAO idade diferente de 25:", nao(idade <> 25))
   escreval("NAO idade diferente de 25 E nome igual a Marcos:", nao((idade <> 25) e (nome = "Marcos")))
   escreval("Idade diferente de 25 OU nome igual a Marcos:", (idade <> 25) ou (nome = "Marcos"))
   escreval("Idade par:", (idade % 2) = 0)
Fimalgoritmo