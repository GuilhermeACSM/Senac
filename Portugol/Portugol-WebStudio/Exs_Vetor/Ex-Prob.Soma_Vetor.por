programa {

    inteiro n, soma, media
   

  funcao inicio() {
    escreva("Quantos números você vai digitar: ") 
    leia(n)

      soma = 0
      inteiro vetor[n]

    para(inteiro i = 0; i <= n-1; i++)  {
      escreva("Digite um número: ")
      leia(vetor[i])
      soma = soma + vetor[i]

    }

    escreva("VALORES = ")
    para(inteiro i = 0; i <= n-1; i++) {
      escreva(vetor[i], "  ")
    }
    
      //soma
      escreva("\nSOMA = ")
      escreva(soma)

      //media 
      media = soma / n
      escreva("\nMEDIA = ")
      escreva(media)
  }
}
