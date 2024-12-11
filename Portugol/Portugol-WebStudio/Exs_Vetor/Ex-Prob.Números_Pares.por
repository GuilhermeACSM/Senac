programa {
  funcao inicio() {
    inteiro n, soma

    escreva("Quantos números você vai digitar? ")
    leia(n)

    inteiro vetor[n]
    soma = 0

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite um número: ")
      leia(vetor[i])
    }

    escreva("Numeros pares = ")
    para(inteiro i = 0; i <= n-1; i++) {
      se(vetor[i] % 2 == 0) {
        escreva(" ",vetor[i], " ")
        soma++
      }
    }
    escreva("\nQuantidade de pares = ", soma)
    
  }
}
