programa {
  inclua biblioteca Matematica

    inteiro horaInicio, horaFinal, duracao

  funcao inicio() {

    escreva("Hora inicial: ")
    leia(horaInicio)
    escreva("Hora final: ")
    leia(horaFinal)


    se (horaFinal > horaInicio ) {
      duracao = horaFinal - horaInicio
      escreva("O jogo durou ", duracao, " horas")
    }
    
    senao {
      se (horaInicio > horaFinal) {
        duracao = (24 - horaInicio) + horaFinal
        escreva("O jogo durou ", duracao, "horas")
      }

      senao {
        se ((horaInicio == 0) e (horaFinal == 0)) {
          duracao = 0 + 24
          escreva("O jogo durou ", duracao, " horas")
        }
      }
    }


  
  }
}
