programa {
  inclua biblioteca Matematica

  real salario, totalS, novoS

  funcao inicio() {
    escreva("Digite o salario da pessoa: ")
    leia(salario)


    se (salario <= 1000) {
      totalS = (20/100)*salario
      novoS = totalS+salario

      escreva("Novo salario = R$ ", novoS)
      escreva("\nAumento = R$ ", totalS)
      escreva("\nPorcentagem = 20%")
    }

    senao {
      se ((salario > 1000) e (salario <= 3000)) {

        totalS = (15/100)*salario
        novoS = totalS+salario

        escreva("Novo salario = R$ ", novoS)
        escreva("\nAumento = R$ ", totalS)
        escreva("\nPorcentagem = 15%")
      }

      senao {
        se ((salario > 3000) e (salario <= 8000)) {
          
          totalS = (10/100)*salario
          novoS = totalS+salario

          escreva("Novo salario = R$ ", novoS)
          escreva("\nAumento = R$ ", totalS)
          escreva("\nPorcentagem = 10%")
        }

        senao {
          se (salario > 8000) {

            totalS = (5/100)*salario
            novoS = totalS+salario

            escreva("Novo salario = R$ ", novoS)
            escreva("\nAumento = R$ ", totalS)
            escreva("\nPorcentagem = 5%")
          }
        }
      }
    }
    
  }
}
