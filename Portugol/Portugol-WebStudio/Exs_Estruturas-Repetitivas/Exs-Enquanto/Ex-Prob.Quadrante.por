programa {

    inteiro x, y

  funcao inicio() {
    escreva("Digite os valores das coordenadas x e y: \n")
    leia(x)
    leia(y)


    enquanto ((x != 0) e (y != 0)) {

      se ((x > 0) e (y > 0)) {
        escreva("Quadrante 1\n")
        leia(x)
        leia(y)
      }
      senao {
          se ((x < 0) e (y > 0)) {
            escreva("Quadrante 2\n")
            leia(x)
            leia(y)
          }
          senao {
            se((x < 0) e (y < 0)) {
              escreva("Quadrante 3\n")
              leia(x)
              leia(y)
            }
            senao {
              se((x > 0) e (y < 0)) {
                escreva("Quadrante 4\n")
                leia(x)
                leia(y)
              }
            }
          }
        }
      
    }
  }
}
