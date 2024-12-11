programa {

    inteiro n, f

  funcao inicio() {
    escreva("Digite o valor de N: ")
    leia(n)

    f = 1
    para (inteiro i = 1; i <= n; i++) {
      f = (f * i)
    }
    
    escreva ("FATORIAL = ", f)
    
  }
}
