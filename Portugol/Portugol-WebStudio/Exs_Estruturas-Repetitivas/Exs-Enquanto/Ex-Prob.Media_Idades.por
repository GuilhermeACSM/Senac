programa {
  inclua biblioteca Matematica

    real media, x, soma, contador

  funcao inicio() {
    //Contadores
    soma = 0
    contador = 0

    escreva("Digite as idades: \n")
    leia(x)

    enquanto (x >= 0) {
      contador = contador + 1
      soma = soma + x
      leia(x)
      media = soma/contador
    }

    se(contador == 0) {
      escreva("Valor Inexistente")
    }

    senao{
      escreva("MEDIA = ", Matematica.arredondar(media,2))
    }
   

    
  }
}
