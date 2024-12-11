programa {
    inclua biblioteca Matematica --> mat

       real a, b, c, delta, x1, x2

    funcao inicio() {
      escreva("Coeficiente a: ")
      leia(a)
      escreva("Coeficiente b: ")
      leia(b)
      escreva("Coeficiente c: ")
      leia(c)
        
      se (mat.potencia(b,2) > (4*a*c)) {
        delta = mat.potencia(b,2) - (4*a*c)
        x1 = (-b + mat.raiz(delta,2)) / (2*a)
        x2 = (-b - mat.raiz(delta,2)) / (2*a)
        escreva("X1 = ", mat.arredondar(x1, 4), "\n")
        escreva("X2 = ", mat.arredondar(x2, 4), "\n")
      }
      senao {  
        escreva("Esta equacao nao possui raizes reais\n")
      }
  }
}