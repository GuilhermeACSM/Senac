programa {

    inteiro x, soma

  funcao inicio() {
    escreva("Digite um número inteiro: ")
    leia(x)

    enquanto( x != 0 ){

      se(x % 2 == 0){
        soma = x + (x + 2) + (x + 4) + (x + 6) + (x + 8)
      }
      senao {
        soma = (x + 1) + (x + 3) + (x + 5) + (x + 7) + (x + 9)
      }
      escreva("SOMA = ", soma, "\n")
      escreva("Digite um número inteiro: ")
      leia(x)
    }
  }
}
