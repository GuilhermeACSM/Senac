programa {

       inteiro n

  funcao inicio() {
   
    escreva ("Quantos números você vai digitar? ")
    leia(n)

    inteiro vetor[n]

    para (inteiro i = 0; i < n; i++){
      escreva ("Digite um número: ")
      leia(vetor[i])
    }

    para (inteiro i = 0; i < n; i++){
      se (vetor[i] < 0){
        escreva("Números Negativos: \n")
        escreva(vetor[i], "\n")
      }
    }
  }
}
