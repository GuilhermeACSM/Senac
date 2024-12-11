programa {
  inclua biblioteca Matematica --> mat

  real distancia, gasto, consumo

  funcao inicio() {
    escreva("Distancia percorrida: ")
    leia(distancia)
    escreva("Combustível gasto: ")
    leia(gasto)
    consumo = mat.arredondar(distancia/gasto, 3)
    escreva("Consumo medio = ", consumo)
  }
}
