programa {

    real x, y, media

  funcao inicio() {
    
    // Primeira Nota
    escreva("Digite a primeira nota: ")
    leia(x)
    enquanto(x < 0 ou x > 10) {
      escreva("Valor invalido! Tente novamente: ")
      leia(x)
    }

    // Segunda Nota
    escreva("Digite a segunda nota: ")
    leia(y)
    enquanto(y < 0 ou y > 10) {
      escreva("Valor invalido! Tente novamente: ")
      leia(y)
    }

    // Media das Notas X e Y
    media = (x + y) / 2
    escreva("MEDIA = ", media)
  }
}
