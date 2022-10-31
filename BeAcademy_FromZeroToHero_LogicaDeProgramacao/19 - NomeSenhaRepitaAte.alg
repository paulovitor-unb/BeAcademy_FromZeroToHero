Algoritmo "NomeSenhaRepitaAte"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Solicita nome e senha do usuario até as informacoes estarem corretas ou ate o usuario decidir sair
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis nome, senha e repetido(se laco ja aconteceu)
   nome, senha: caractere
   repetido: logico

Inicio
   // Valor inicial de repetido
   repetido <- falso

   // Inicia laco de repeticao ate usuario inserir dados corretos ou interromper o programa
   repita
      // Acusa nome e/ou senha invalidos se laco repetiu
      se repetido entao
         escreval()
         escreval("Erro! Nome e/ou senha invalidos")
         escreval("Insira os dados novamente")
      fimse

      // Solicita nome e senha (ou interrompe programa)
      escreva("Digite seu nome: ")
      leia(nome)
      se nome = "-1" entao
         escreval()
         escreval("Programa finalizado pelo usuario")
         interrompa
      fimse

      escreva("Digite sua senha: ")
      leia(senha)
      se senha = "-1" entao
         escreval()
         escreval("Programa finalizado pelo usuario")
         interrompa
      fimse

      // Atualiza valor de repetido
      repetido <- verdadeiro
   ate (nome = "Marcos") e (senha = "1234")

   se (nome <> "-1") e (senha <> "-1") entao
      escreval()
      escreval("Seja Bem-vindo ", nome, "!")
   fimse
Fimalgoritmo