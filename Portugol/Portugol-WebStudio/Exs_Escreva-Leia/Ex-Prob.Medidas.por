programa {
  inclua biblioteca Matematica --> mat

  real medidaA, medidaB, medidaC, areaQ, areaTri, areaTra
  funcao inicio() {
    escreva("Digite a medida A: ")
    leia(medidaA)
    escreva("Digite a medida B: ")
    leia(medidaB)
    escreva("Digite a medida C: ")
    leia(medidaC)
    areaQ = mat.potencia(medidaA,2.0)
    areaTri = medidaA*medidaB/2
    areaTra = (medidaA+medidaB)*medidaC/2
    escreva("Area do quadrado: ", areaQ)
    escreva("\nArea do Triangulo: ", areaTri)
    escreva("\nArea do Trapezio: ", areaTra)
  }
}
