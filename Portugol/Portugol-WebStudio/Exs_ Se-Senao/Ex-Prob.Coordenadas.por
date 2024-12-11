programa {
  inclua biblioteca Matematica

      real x, y

  funcao inicio() {
    escreva("Valor de X: ")
    leia(x)
    escreva("Valor de Y: ")
    leia(y)

    se ((x == 0) e (y == 0)) {
      escreva("Origem")
    }
      senao {
        se (x == 0) {
          escreva("Eixo Y")
        }

        senao {
          se (y == 0)
          escreva("Eixo X")

          // x e y positivos ou seja Q1 no plano cartesiano
          senao {
            se ((x > 0) e (y > 0)) {
              escreva("Q1")
            }
            // x negativo e y positivo ou seja Q2 no plano cartesiano 
            senao {
              se ((x < 0) e (y > 0)) {
                escreva("Q2")
              }
              // x negativo e y negativo ou seja Q3 no plano cartesiano
              senao {
                se((x < 0) e (y < 0)) {
                  escreva("Q3")
                }
                // x positivo e y negativo ou seja Q4 no plano cartesiano
                senao {
                  se((x > 0) e (y < 0)) {
                    escreva("Q4")
                  }
                }
              }
            }
          }
        }
      }
        
  }
}
