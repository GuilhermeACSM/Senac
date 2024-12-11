programa {

  inteiro a, b

  funcao inicio() {
    escreva("Digite o primeiro número: ")
    leia(a)
    escreva("Digite o segundo número: ")
    leia(b)

    se ((a%b == 0) ou (b%a == 0)) {
        escreva("São multiplos")
    }
    senao  {
      escreva("Não sao multiplos")
    }

  }
         
        
}

