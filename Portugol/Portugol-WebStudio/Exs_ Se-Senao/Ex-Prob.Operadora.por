programa {
  inclua biblioteca Matematica

    real minutos, valor

  funcao inicio() {
    escreva("Digite a quantidade de minutos: ")
    leia(minutos)
    
    se (minutos <= 100) {
      valor = (50.00)
      escreva("Valor da conta: R$",valor)
    }
    senao {
      valor = ((minutos-100)*2)+50.00
      escreva("Valor da conta: R$", valor)
    }
  }
}
