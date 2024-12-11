programa {

  real d1, d2, d3

  funcao inicio() {
    escreva("Digite as tres distancias: ")
    escreva("\nPrimeira: ")
    leia(d1)
    escreva("Segunda: ")
    leia(d2)
    escreva("Terceira: ")
    leia(d3)

    se ((d1 > d2)e(d1 > d3)) {
      escreva("Maior Distancia: ", d1)
    }
    senao {
      se(d2 > d3) {
        escreva("Maior Distancia: ", d2)
      }
      senao{
        escreva("Maior Distancia: ", d3)
      }
    }
  }
}
