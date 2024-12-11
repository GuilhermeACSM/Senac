programa {
  inteiro idade1, idade2
  cadeia nome1, nome2
  real mediaIdades
  funcao inicio() {
    escreva("Digite o nome da pessoa 1: \n")
    leia(nome1)
    escreva("Digite a idade da pessoa 1: \n")
    leia(idade1)
    escreva("Digite o nome da pessoa 2: \n")
    leia(nome2)
    escreva("Digite a idade da pessoa 2: \n")
    leia(idade2)
    mediaIdades = (idade1+idade2)/2
    escreva("Dados da primeira pessoa: \n")
    escreva("Nome: ", nome1, ".\n")
    escreva("Idade: ", idade1, ".\n")
    escreva("Dados da segunda pessoa: \n")
    escreva("Nome: ", nome2, ".\n")
    escreva("Idade: ", idade2, ".\n")
    escreva("A idade média de ", nome1, " e ", nome2, " é de ", mediaIdades, " anos.")
  }
}