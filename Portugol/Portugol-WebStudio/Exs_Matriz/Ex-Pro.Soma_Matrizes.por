programa {
  funcao inicio() {
        inteiro l, c

    escreva("Quantas linhas vai ter cada vetor? ")
    leia(l)
    escreva("Quantas colunas vai ter cada vetor? ")
    leia(c)

    inteiro matrizA[l][c], matrizB[l][c], matrizC[l][c]

     se (l e c <= 10){
        escreva("Digite os valores da matriz A: \n")
      para (inteiro linha = 0; linha <= l-1; linha++){
        para (inteiro coluna = 0; coluna <= c-1; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matrizA[linha][coluna])
        }
      }

        escreva("Digite os valores da matriz B: \n")
      para (inteiro linha = 0; linha <= l-1; linha++) {
        para (inteiro coluna = 0; coluna <= c-1; coluna++) {
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matrizB[linha][coluna])
        }
      }
        
      para (inteiro linha = 0; linha <= l-1; linha++) {
        para(inteiro coluna = 0; coluna <= c-1; coluna++) {
          matrizC[linha][coluna] = matrizA[linha][coluna] + matrizB[linha][coluna]
        }
      }
      
        escreva("MATRIZ SOMA: \n")
      para(inteiro linha = 0; linha <= l-1; linha++) {
        para(inteiro coluna = 0; coluna <= c-1; coluna++) {
          escreva(matrizC[linha][coluna], " ")
        }
      }
    }
    
    senao {
      escreva("Digite um valor de linhas e colunas Menor ou Igual a 10! \n")
      inicio()
    }
  }
}
