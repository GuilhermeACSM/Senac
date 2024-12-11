programa {

    inteiro n
    real x, y, divisao 

  funcao inicio() {
    escreva("Quantos casos você vai digitar? ")
    leia(n)

    para (inteiro i = 1; i <= n; i++) {
      escreva("Entre com o numerador: ")
      leia(x)
      escreva("Entre com o denominador: ")
      leia(y)

      se(y == 0) {
        escreva("DIVISÃO IMPOSSÍVEL\n")
      }
      senao{
        divisao = x / y
        escreva("DIVISAO = ", divisao, "\n")
      }
      
      
    }
  }
}
