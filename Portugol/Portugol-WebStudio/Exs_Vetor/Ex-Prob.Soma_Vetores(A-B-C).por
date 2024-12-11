programa {
  funcao inicio() {
      //var
      inteiro n, soma = 0

    escreva("Quantos valores vai ter cada vetor? ")
    leia(n)

    inteiro vetorA[n], vetorB[n]

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite os valores do Vetor A: ")
      leia(vetorA[i])
    }

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite os valores do vetor B: ")
      leia(vetorB[i])
    }

    escreva("VETOR RESULTANTE: \n")
    para(inteiro i = 0; i <= n-1; i++) {
      soma = vetorA[i] + vetorB[i]
      escreva(soma, "\n")
    }
  }
}
