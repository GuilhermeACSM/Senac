programa {
  funcao inicio() {
    inteiro n, nMaior = 0
    
    escreva("Qual a ordem da matriz? ")
    leia(n)

    inteiro matriz[n][n]
    
    se (n <= 10){
      
      para (inteiro linha = 0; linha <= n-1; linha++){
        para (inteiro coluna = 0; coluna <= n-1; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matriz[linha][coluna])
        }
      }

      escreva("MAIOR ELEMENTO DE CADA LINHA: \n")

      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (matriz[linha][coluna] > nMaior){
          nMaior = matriz[linha][coluna]
          }
        }
        escreva(nMaior, "\n")
        nMaior = 0
      }
    } 
    
    senao {
      escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")
      inicio()
    }  
  }
}