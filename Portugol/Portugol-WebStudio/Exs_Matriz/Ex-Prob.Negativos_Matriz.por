programa {
  funcao inicio() {

      inteiro l, c 

    escreva("Qual a quantidade de linhas da matriz? ")
    leia(l)
    escreva("Qual a quantidade de colunas da matriz? ")
    leia(c)

    se (l e c <= 10) {
        real matriz[l][c]
      
      para(inteiro linha = 0; linha <= l-1; linha++) {
        para(inteiro coluna = 0; coluna <= c-1; coluna++) {
          escreva("Elemento [",linha, "," ,coluna,"]")
          leia(matriz[linha][coluna])
        }
      }
      escreva("VALORES NEGATIVOS: \n")
      para(inteiro linha = 0; linha <= l-1; linha++) {
        para(inteiro coluna = 0; coluna <= c-1; coluna++) {
          se (matriz[linha][coluna] < 0) {
            escreva(matriz[linha][coluna], "\n")
          }
        }
      }
    }
    senao {
      escreva("Digite um valor de linhas e colunas Menor ou Igua A 10!\n")
      inicio()
    }
    
  }
}
