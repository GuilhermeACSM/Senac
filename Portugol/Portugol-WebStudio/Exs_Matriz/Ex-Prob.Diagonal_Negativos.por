programa {
  funcao inicio() {

    inteiro quantidadeN = 0
    real n

    escreva("Quantas linhas vai ter a matriz? ")
    leia(n)

    se(n <= 10) {
        real matriz[n][n]

      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          escreva("Elemento [" ,linha, "," ,coluna, "]: ")
          leia(matriz[linha][coluna])
        }
      }
      escreva("Diagonal Principal: \n")
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          se(linha == coluna) {
            escreva(matriz[linha] [coluna], " ")
          }
        }
      }
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++){
          se (matriz[linha][coluna] < 0) {
            quantidadeN++
          }
        }
      }
      escreva("\nQuantidade de Negativos = ", quantidadeN)
    }
    senao {
      escreva("Digite um valor de linhas e colunas Menor ou Igua A 10!\n")
      inicio()
    }
    
  }
}