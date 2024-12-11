programa {
  funcao inicio() {
      inteiro n
      real media, soma
    
    escreva("Quantos elementos vai ter o vetor? ")
    leia(n)

    real vetor[n]
    soma = 0
    media = 0

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite um número: ")
      leia(vetor[i])
      soma = soma + vetor[i]
    }

    media = soma/n 
    escreva("\nMÉDIA DO VETOR = ", media, "\n")

    escreva("ELEMENTOS ABAIXO DA MÉDIA: \n")
    para(inteiro i = 0; i <= n-1; i++) {
      se(vetor[i] < media) {
        escreva(vetor[i], "\n")
      }
    }
  }
}
