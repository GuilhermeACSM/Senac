programa {
  funcao inicio() {
   
      inteiro n, m
      real soma = 0
 
    escreva("Quantas linhas vai ter a matriz? ")
    leia(n)
    escreva("Quantas colunas vai ter a matriz? ")
    leia(m)
 
    se(n e m <= 10) {
      real matriz[n][m]
 
      para(inteiro linha = 0; linha <= n-1; linha++) {
        escreva("Digite os elementos da ", linha+1, "ª linha: \n")
        para(inteiro coluna = 0; coluna <= m-1; coluna++) {
          leia(matriz[linha][coluna])
        }
      }

      escreva("Vetor gerado: \n")
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= m-1; coluna++) {
          soma = soma + matriz[linha][coluna]
        }
        escreva(soma,"\n")
        //Soma == 0 pois para somar a 2ª coluna em diante ela tem que zerar e somar somente aquela coluna
        soma = 0
      }
    }
    senao{
      escreva("Digite um número de linhas e de colunas que seja Menor ou Igual a 10!\n")
    }

  }
}
