programa {

    inteiro x

  funcao inicio() {
    escreva("Digite o valor de x: ")
    leia(x)

    para (inteiro i = 1; i >= 1 e i <= x; i++){

      se(i != x){ 
        se ((i % 2) != 0){
          escreva(i, "\n")
        }
      } 
    }

  }
}
