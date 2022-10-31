Algoritmo "DadosClientes"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Armazena dados do usuario em vetores e mostra na tela ao final
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para dados dos clientes e contador(i)
   nomes, cpfs, rgs, enderecos, telefones: vetor[0..4] de caractere
   i: inteiro

Inicio
   // Solicita dados dos clientes
   para i de 0 ate 4 faca
      escreva("Digite o nome do cliente: ")
      leia(nomes[i])
      escreva("Digite o CPF do cliente: ")
      leia(cpfs[i])
      escreva("Digite o RG do cliente: ")
      leia(rgs[i])
      escreva("Digite o endereco do cliente: ")
      leia(enderecos[i])
      escreva("Digite o telefone do cliente: ")
      leia(telefones[i])
      escreval()
   fimpara

   // Mostra informacoes dos clientes
   escreval("Lista de clientes:")
   para i de 0 ate 4 faca
      escreval("Cliente: ", nomes[i])
      escreval("   CPF: ", cpfs[i])
      escreval("   RG: ", rgs[i])
      escreval("   Endereco: ", enderecos[i])
      escreval("   Telefone: ", telefones[i])
      escreval()
   fimpara
Fimalgoritmo