Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/11/2026



var
   modelos: vetor[1..5] de caractere
   tamanhos: vetor[1..4] de caractere
   precos: vetor[1..5] de real
   estoque: vetor[1..5,1..4] de inteiro
   vendas: vetor[1..5,1..4] de inteiro
   faturamento: vetor[1..5] de real
   tecla: caractere

   opcao, i, j, m, t, qtd: inteiro
   total, desconto, pagar: real
   maior, posicao, soma: inteiro
   geral: real

inicio

   modelos[1] <- "Camiseta"
   modelos[2] <- "Calca"
   modelos[3] <- "Moletom"
   modelos[4] <- "Bermuda"
   modelos[5] <- "Jaqueta"

   tamanhos[1] <- "P"
   tamanhos[2] <- "M"
   tamanhos[3] <- "G"
   tamanhos[4] <- "GG"


   para i de 1 ate 5 faca
      faturamento[i] <- 0
      para j de 1 ate 4 faca
         estoque[i,j] <- 0
         vendas[i,j] <- 0
      fimpara
   fimpara

   repita

      limpatela

      escreval("================================")
      escreval("          TUTUBRANDS")
      escreval("")
      escreval("================================")
      escreval("1 - Cadastrar modelos")
      escreval("2 - Entrada de pecas")
      escreval("3 - Consultar estoque")
      escreval("4 - Registrar vendas")
      escreval("5 - Estoque baixo")
      escreval("6 - Relatorio de vendas")
      escreval("7 - Sair")
      escreval("================================")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      limpatela

      escolha opcao

      caso 1
         escreval("====== MODELOS CADASTRADOS ======")
         para i de 1 ate 5 faca
            escreval(i, " - ", modelos[i], " | R$ ", precos[i])
         fimpara

      caso 2
         escreval("====== ENTRADA DE PECAS ======")

         para i de 1 ate 5 faca
            escreval(i, " - ", modelos[i])
         fimpara

         escreva("Escolha o modelo: ")
         leia(m)

         se (m >= 1) e (m <= 5) entao
            escreval("1-P | 2-M | 3-G | 4-GG")
            escreva("Escolha o tamanho: ")
            leia(t)

            se (t >= 1) e (t <= 4) entao
               escreva("Quantidade: ")
               leia(qtd)

               se qtd > 0 entao
                  estoque[m,t] <- estoque[m,t] + qtd
                  escreval("Entrada realizada com sucesso!")
               senao
                  escreval("Quantidade invalida!")
               fimse
            senao
               escreval("Tamanho invalido!")
            fimse
         senao
            escreval("Modelo invalido!")
         fimse

      caso 3
         escreval("====== CONSULTA DE ESTOQUE ======")

         para i de 1 ate 5 faca
            escreval("")
            escreval("MODELO: ", modelos[i])

            para j de 1 ate 4 faca
               escreval(tamanhos[j], ": ", estoque[i,j], " pecas")
            fimpara
         fimpara

      caso 4
         escreval("====== REGISTRAR VENDA ======")

         para i de 1 ate 5 faca
            escreval(i, " - ", modelos[i], " | R$ ", precos[i])
         fimpara

         escreva("Escolha o modelo: ")
         leia(m)

         se (m >= 1) e (m <= 5) entao
            escreval("1-P | 2-M | 3-G | 4-GG")
            escreva("Escolha o tamanho: ")
            leia(t)

            se (t >= 1) e (t <= 4) entao
               escreva("Quantidade: ")
               leia(qtd)

               se (qtd > 0) e (qtd <= estoque[m,t]) entao

                  total <- qtd * precos[m]
                  desconto <- 0

                  se total > 250 entao
                     desconto <- total * 0.15
                  fimse

                  pagar <- total - desconto

                  estoque[m,t] <- estoque[m,t] - qtd
                  vendas[m,t] <- vendas[m,t] + qtd
                  faturamento[m] <- faturamento[m] + pagar

                  escreval("")
                  escreval("====== COMPROVANTE ======")
                  escreval("Modelo: ", modelos[m])
                  escreval("Tamanho: ", tamanhos[t])
                  escreval("Quantidade: ", qtd)
                  escreval("Valor original: R$ ", total)
                  escreval("Desconto: R$ ", desconto)
                  escreval("TOTAL: R$ ", pagar)
                  escreval("Venda realizada!")

               senao
                  escreval("Estoque insuficiente ou quantidade invalida!")
               fimse
            senao
               escreval("Tamanho invalido!")
            fimse
         senao
            escreval("Modelo invalido!")
         fimse

      caso 5
         escreval("====== ESTOQUE BAIXO ======")

         para i de 1 ate 5 faca
            para j de 1 ate 4 faca
               se estoque[i,j] < 5 entao
                  escreval(modelos[i], " - ", tamanhos[j],
                  " - Quantidade: ", estoque[i,j])
               fimse
            fimpara
         fimpara

      caso 6
         escreval("====== RELATORIO DE VENDAS ======")

         geral <- 0

         para i de 1 ate 5 faca
            escreval("")
            escreval("MODELO: ", modelos[i])
            escreval("Faturamento: R$ ", faturamento[i])

            geral <- geral + faturamento[i]

            para j de 1 ate 4 faca
               escreval(tamanhos[j], ": ", vendas[i,j], " vendidos")
            fimpara
         fimpara

         maior <- 0
         posicao <- 0

         para j de 1 ate 4 faca
            soma <- 0

            para i de 1 ate 5 faca
               soma <- soma + vendas[i,j]
            fimpara

            se soma > maior entao
               maior <- soma
               posicao <- j
            fimse
         fimpara

         escreval("")
         escreval("FATURAMENTO GERAL: R$ ", geral)

         se maior > 0 entao
            escreval("TAMANHO MAIS VENDIDO: ", tamanhos[posicao])
            escreval("QUANTIDADE: ", maior)
         senao
            escreval("Nenhuma venda realizada.")
         fimse

      caso 7




   escreval("")


   escreval("      _______           \\_______")
   escreval("     /       |           |      \\")
   escreval("    /        | _________ |       \\")
   escreval("   /     /                  \     \\")
   escreval("  |     /                    \     |")
   escreval("  |     |                    |     |")
   escreval("  |     |      OBRIGADO      |     |")
   escreval("  |     |     TUTUBRANDS     |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |     |                    |     |")
   escreval("  |_____|____________________|_____|")


      outrocaso
         escreval("Opcao invalida!")

      fimescolha

      se opcao <> 7 entao
         escreval("")
         escreval("Pressione ENTER para voltar ao menu...")
         leia(tecla)
         fimse

   ate opcao = 7



fimalgoritmo
