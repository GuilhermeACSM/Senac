programa {
  inclua biblioteca Matematica

    inteiro decrescente, crescente, x, y

  funcao inicio() {

    escreva("Digite dois numeros: \n")
    leia(x)
    leia(y)
              // (!=) significado: DIFERENTE
    enquanto (x != y) {

      se (x > y) {
        escreva("DECRESCENTE!")
        escreva("\nDigite outros dois numeros: \n")
        leia(x)
        leia(y)
      }

      senao {
        se(x < y) {
          escreva("CRESCENTE!")
          escreva("\nDigite outros dois numeros: \n")
          leia(x)
          leia(y)

        }
      }
      
      

    }


  }
}
