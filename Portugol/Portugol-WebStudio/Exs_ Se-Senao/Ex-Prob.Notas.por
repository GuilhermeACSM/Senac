programa {
  real primeira, segunda, final
  funcao inicio() {
    escreva("Digite a primeira nota: ")
    leia(primeira)
    escreva("Digite a segunda note: ")
    leia(segunda)
    final = primeira+segunda
    escreva("NOTA FINAL = ", final)

    se(final<60){
      escreva("\nReprovado")
    }
    senao{
      escreva("\nAprovado")
    }
    
    
  }
}
