programa {
  funcao inicio() {
        inteiro n, l, c
        real soma = 0

    escreva("Qual a ordem da matriz? ")
    leia(n)

        real matriz[n][n]
    se(n <= 10){ 
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          escreva("Elemento [", linha , "," , coluna ,"]: ")
          leia(matriz[linha][coluna])
        }
      }

      //Soma Dos Positivos
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          se(matriz[linha][coluna] > 0) {
            soma = soma + matriz[linha][coluna]
          }
        }
      }
      escreva("\nSOMA DOS POSITIVOS: ", soma, "\n")

      //Escolher Linha
        escreva("\nEscolha uma linha: ")
        leia(l)
        escreva("LINHA ESCOLHIDA: ")
      para(inteiro coluna = 0; coluna <= n-1; coluna++) {
        escreva(matriz[l][coluna], "  ")
      }

      escreva("\n")

      //Escolher Coluna
        escreva("\nEscolha uma coluna: ")
        leia(c)
        escreva("COLUNA ESCOLHIDA: ")
      para(inteiro linha = 0; linha <= n-1; linha++) {
        escreva(matriz[linha][c], "  ")
      }
      
      escreva("\n")

      //Diagonal Principal
      escreva("\nDIAGONAL PRINCIPAL: ")
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          se(linha == coluna) {
            escreva(matriz[linha] [coluna], "  ")
          }
        }
      }

      escreva("\n")
      //Matriz Alterada
      escreva("\nMATRIZ ALTERADA: \n")
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          se(matriz[linha][coluna] < 0) {
            matriz[linha][coluna] = matriz[linha][coluna] * matriz[linha][coluna]
          }
          escreva(matriz[linha][coluna], "  ")
        }
        escreva("\n")
      }

    }

  }
}
