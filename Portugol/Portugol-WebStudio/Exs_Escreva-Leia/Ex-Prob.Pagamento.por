programa {
  inclua biblioteca Matematica --> mat

  caracter nome
  real valor, horas, total 
  
  funcao inicio() {
    escreva("Nome: ")
    leia(nome)
    escreva("Valor por hora: ")
    leia(valor)
    escreva("Horas trabalhadas: ")
    leia(horas)
    total = valor*horas
    escreva("O pagamento para ", nome, " deve ser ", total)
  }
}
