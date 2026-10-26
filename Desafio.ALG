Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/10/2026

Var
   produto, pessoa1, pessoa2: caractere
   estoque, entrada: inteiro
   venda1, venda2: inteiro
   preco, faturamento1, faturamento2, total: real

Inicio
   escreval("=== SISTEMA DE CONTROLE DE ESTOQUE ===")

   escreva("Nome do produto: ")
   leia(produto)

   escreva("Estoque inicial: ")
   leia(estoque)

   escreva("Quantidade recebida: ")
   leia(entrada)

   escreva("Preco unitario: R$ ")
   leia(preco)

   estoque <- estoque + entrada

   escreval("")
   escreval("=== CADASTRO DAS PESSOAS ===")

   escreva("Nome da primeira pessoa: ")
   leia(pessoa1)

   escreva("Quantidade vendida por ", pessoa1, ": ")
   leia(venda1)

   escreva("Nome da segunda pessoa: ")
   leia(pessoa2)

   escreva("Quantidade vendida por ", pessoa2, ": ")
   leia(venda2)

   se (venda1 + venda2) <= estoque entao

      estoque <- estoque - venda1 - venda2

      faturamento1 <- venda1 * preco
      faturamento2 <- venda2 * preco
      total <- faturamento1 + faturamento2

      escreval("")
      escreval("=== RELATORIO FINAL ===")
      escreval("Produto: ", produto)
      escreval("Entrada de produtos: ", entrada)

      escreval("")
      escreval("=== VENDAS POR PESSOA ===")

      escreval("Pessoa: ", pessoa1)
      escreval("Quantidade vendida: ", venda1)
      escreval("Faturamento: R$ ", faturamento1)

      escreval("")
      escreval("Pessoa: ", pessoa2)
      escreval("Quantidade vendida: ", venda2)
      escreval("Faturamento: R$ ", faturamento2)

      escreval("")
      escreval("FATURAMENTO TOTAL: R$ ", total)
      escreval("ESTOQUE FINAL: ", estoque)

   senao
      escreval("ESTOQUE INSUFICIENTE!")
      escreval("Estoque disponivel: ", estoque)
      escreval("Quantidade solicitada: ", venda1 + venda2)
   fimse

Fimalgoritmo


