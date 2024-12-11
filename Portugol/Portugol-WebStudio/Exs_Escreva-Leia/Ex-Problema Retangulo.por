programa {
inclua biblioteca Matematica --> mat
inclua biblioteca Matematica

  real baseRetangulo, alturaRetangulo, areaRetangulo, perimetroRetangulo, diagonalRetangulo

  funcao inicio() {
    escreva("Qual o valor da base do retângulo?\n")
    leia(baseRetangulo)
    escreva("Qual o valor da altura do retângulo?\n")
    leia(alturaRetangulo)
    areaRetangulo = Matematica.arredondar(baseRetangulo*alturaRetangulo, 4)
    perimetroRetangulo = 2*(baseRetangulo+alturaRetangulo)
    diagonalRetangulo = Matematica.arredondar(mat.raiz(mat.potencia(baseRetangulo,2.0)+mat.potencia(alturaRetangulo,2.0),2.0),4)
    escreva("ÁREA: ", areaRetangulo, "m2.\n")
    escreva("PERÍMETRO: ", perimetroRetangulo, "m.\n")
    escreva("DIAGONAL: ", diagonalRetangulo, "m.\n")
  }
}