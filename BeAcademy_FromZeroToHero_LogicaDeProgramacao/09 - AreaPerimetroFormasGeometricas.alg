Algoritmo "AreaPerimetroFormasGeometricas"
// Disciplina : Logica de Programacao
// Professor  : Marcos Monteiro
// Descricao  : Retorna valores para area e perimetro de quadrado(Q) ou triangulo(T)
// Autor      : Paulo Vitor dos Santos
// Data atual : 27/10/2022

Var
   // Variaveis para a forma geometrica desejada e medida dos lados da forma
   forma: caractere
   lado: real
Inicio
   // Solicita forma geometrica desejada e medida dos lados
   escreval("Selecione a forma geometrica desejada:")
   escreval("Digite Q para quadrado")
   escreval("Digite T para triangulo equilatero")
   escreva("Forma geometrica: ")
   leia(forma)
   forma <- maiusc(forma)
   escreva("Medida dos lados da forma geometrica: ")
   leia(lado)

   // Mostra os valores para area e perimetro da forma geometrica
   escreval()
   escolha forma
   caso "Q"
      escreval("Medidas do quadrado")
      escreval("Area:", lado ^ 2)
      escreval("Perimetro:", 4 * lado)
   caso "T"
      escreval("Medidas do triangulo equilatero")
      escreval("Area:", ((lado ^ 2) * raizq(3)) / 4)
      escreval("Perimetro:", 3 * lado)
   outrocaso
      escreval("Forma geometrica invalida!")
   fimescolha
Fimalgoritmo