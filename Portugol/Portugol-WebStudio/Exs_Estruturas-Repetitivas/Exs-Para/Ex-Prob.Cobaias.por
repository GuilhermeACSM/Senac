programa {
  inclua biblioteca Matematica

    inteiro n, cobaias, totalCobaia, c, r, s
    caracter  tipoC
    real pC, pR, pS

  funcao inicio() {
    c = 0
    r = 0
    s = 0
    totalCobaia = 0

    escreva("Quantos casos de testes serão digitados? ")
    leia(n)

    para(inteiro i = 1; i <= n; i++) {
      escreva("Quantidade de cobaias: ")
      leia(cobaias)
      escreva("Tipo de Cobaia (R: Rato, S: Sapo, C: Coelho): ")
      leia(tipoC)

      //Coelho
      se(tipoC == "C" ou tipoC == "c") {
        c = c + cobaias
        totalCobaia = totalCobaia + cobaias
      }
      senao{
        //Sapo
        se(tipoC == "S" ou tipoC == "s") {
          s = s + cobaias
          totalCobaia = totalCobaia + cobaias
        }
        senao{
          //Rato
          se(tipoC == "R" ou tipoC == "r") {
            r = r + cobaias
            totalCobaia = totalCobaia + cobaias
          }
          senao {
            escreva("Digito Inválido!\n")
            escreva("Digite R, S ou C\n")
          }
        }
      }
    }
    //Calculando a %
    pC = (100 * c)/totalCobaia
    pS = (100 * s)/totalCobaia
    pR = (100 * r)/totalCobaia

    escreva("Relátorio Final: \n")
    escreva("Total: ", totalCobaia, " cobaias\n")
    escreva("Total Coelhos: ", c, "\n")
    escreva("Total Sapos: ", s, "\n")
    escreva("Total Ratos: ", r, "\n")
    escreva("Percentual de Coelhos: ", Matematica.arredondar(pC,2), "\n")
    escreva("Percentual de Sapos: ", Matematica.arredondar(pS,2), "\n")
    escreva("Percentual de Ratos: ", Matematica.arredondar(pR,2))

  }
}
