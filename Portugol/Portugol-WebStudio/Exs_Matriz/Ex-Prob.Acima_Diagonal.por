programa {
  funcao inicio() {
        inteiro n, soma = 0

    escreva("Qual a ordem da matriz? ")
    leia(n)

        inteiro matriz[n][n]
    
    se(n <= 10) {
      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = 0; coluna <= n-1; coluna++) {
          escreva("Elemento [", linha , "," , coluna ,"]: ")
          leia(matriz[linha][coluna])
        }
      }

      para(inteiro linha = 0; linha <= n-1; linha++) {
        para(inteiro coluna = linha + 1; coluna <= n-1; coluna++) 
        {

          soma = soma + matriz[linha][coluna]
        }
      }
      escreva("SOMA DOS ELEMENTOS ACIMA DA DIAGONAL PRINCIPAL = ", soma, "\n")
    }
    senao {
      escreva("A ordem da matriz deve ser Menor ou Igual a 10! \n")
      inicio()
    }

  }
}
