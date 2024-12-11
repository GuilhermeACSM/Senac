programa {
  inteiro horaInicial, horaFinal, duracao

  funcao inicio() {
    escreva("Hora inicial: ")
    leia(horaInicial)
    escreva("Hora final: ")
    leia(horaFinal)

    se (horaInicial < horaFinal) {
      escreva("O JOGO DUROU ", horaFinal-horaInicial, " HORA(S)")
    }
    
    senao {
      horaFinal = horaFinal+24
      escreva("O JOGO DUROU ", horaFinal-horaInicial, " HORA(S)")
    }
  }
}