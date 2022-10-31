Algoritmo "NomeSenhaEnquanto"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita nome e senha do usuario até as informacoes estarem corretas
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis nome e senha
   nome, senha: caractere

Inicio
   // Solicita nome e senha
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite sua senha: ")
   leia(senha)

   // Repete solicitacao de nome e senha caso invalidos
   enquanto (nome <> "Marcos") ou (senha <> "paylivre") faca
      // Acusa nome e/ou senha invalidos
      escreval()
      escreval("Erro! Nome e/ou senha invalidos")
      escreval("Insira os dados novamente")

      // Solicita nome e senha novamente
      escreva("Digite seu nome: ")
      leia(nome)
      escreva("Digite sua senha: ")
      leia(senha)
   fimenquanto

   escreval()
   escreval("Seja Bem-vindo ", nome, "!")
Fimalgoritmo