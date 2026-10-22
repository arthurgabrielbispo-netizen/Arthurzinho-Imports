Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2026


Var
   contador, tipos, quantidade, total: inteiro

Inicio
   escreva("Quantos produtos serao cadastrados? ")
   leia(tipos)

   enquanto tipos <= 0 faca
      escreva("Digite uma quantidade maior que zero: ")
      leia(tipos)
   fimenquanto

   contador <- 1
   total <- 0

   enquanto contador <= tipos faca
      escreva("Quantidade do produto ", contador, ": ")
      leia(quantidade)

      enquanto quantidade < 0 faca
         escreva("Digite uma quantidade valida: ")
         leia(quantidade)
      fimenquanto

      total <- total + quantidade
      contador <- contador + 1
   fimenquanto

   escreval("Tipos cadastrados: ", tipos)
   escreval("Total de unidades: ", total)

   se total < 50 entao
      escreval("Estoque baixo!")
   senao
      escreval("Estoque em quantidade adequada!")
   fimse

Fimalgoritmo


































































