 programa {
  funcao inicio() {

    inteiro n, nMAIOR = 0, posicao = 0

    escreva("Quantos números você vai digitar? ")
    leia(n)

    inteiro vetor[n]

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite um número: ")
      leia(vetor[i])
    }

    para(inteiro i = 0; i <= n-1; i++) {
      se(vetor[i] > nMAIOR) {
        nMAIOR = vetor[i]
        posicao = i
      }
    }
    escreva("MAIOR VALOR = ", nMAIOR, "\n")
    escreva("Posição do MAIOR VALOR: ", posicao)
    
  }
}
