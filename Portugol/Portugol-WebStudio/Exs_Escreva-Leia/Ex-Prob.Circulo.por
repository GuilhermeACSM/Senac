programa {
  inclua biblioteca Matematica --> mat

  real raio, area
  funcao inicio() {
    escreva("Digite o valor do raio do circulo: ")
    leia(raio)
    area = mat.arredondar(mat.PI * mat.potencia(raio, 2.0),3)
    escreva("AREA = ", area)


  }
}
