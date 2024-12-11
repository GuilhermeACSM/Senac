programa {
  inclua biblioteca Matematica

  caracter escala
  real temperaturaC, temperaturaF, c, f

  funcao inicio() {
    escreva("Você vai digitar a temperatura em qual escala (C/F): ")
    leia(escala)


    se ((escala == "C") ou (escala == "c")) {
      escreva("Digite a temperatura em Celsius: ")
      leia(c)
      temperaturaF = (c*1.8)+32
      escreva("Temperatura equivalente em Fahrenheit: ", Matematica.arredondar(temperaturaF,2))
    }

    senao {
      se ((escala == "F") ou (escala == "f")) {
      escreva("Digite a temperatura em Fahrenheit: ")
      leia(f)
      temperaturaC = (f - 32)/1.8
      escreva("Temperatura equivalente em Celsius: ", Matematica.arredondar(temperaturaC,2))
    }
    }
    
  }
}