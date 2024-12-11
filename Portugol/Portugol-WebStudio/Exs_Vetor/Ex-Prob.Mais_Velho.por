programa {
  funcao inicio() {
      inteiro n, pMaior = 0, posicao = 0

    escreva("Quantas pessoas você vai digitar: ")
    leia(n)

    inteiro idade[n]
    cadeia nome[n]

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Dados da ", i+1, "ª pessoa")
      escreva("\nNome: ") 
      leia(nome[i])
      escreva("Idade: ")
      leia(idade[i])
    }
    para(inteiro i = 0; i <= n-1; i++) {
      se(idade[i] > pMaior) {
        pMaior = idade[i]
        posicao + i
      }
    }
    escreva("PESSOA MAIS VELHA: ", nome[posicao])
  }
}
