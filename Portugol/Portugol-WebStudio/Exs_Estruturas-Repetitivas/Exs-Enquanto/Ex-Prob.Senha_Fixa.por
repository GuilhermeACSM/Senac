programa {

    inteiro senha

  funcao inicio() {
    escreva("Digite a senha: ")
    leia(senha)

    enquanto (senha != 2002) {
      escreva("Senha invalida! Tente novamente: ")
      leia(senha)
    }
      escreva("Acesso permitido!")
  }
}
