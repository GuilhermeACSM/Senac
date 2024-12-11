programa {
  inclua biblioteca Matematica --> math

      inteiro n
      real x, y, z, media
  
  funcao inicio() {
    escreva("Quantos casos você vai digitar? ")
    leia(n)

    para (inteiro i = 1; i <= n; i++) {
      leia(x)
      leia(y)
      leia(z)

      media = ((x * 2) + (y * 3) + (z * 5))/(2 + 3 + 5)
      escreva("MÉDIA = ", math.arredondar(media,1), "\n")
    }
  }
}
