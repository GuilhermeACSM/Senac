programa {
  inclua biblioteca Matematica
  funcao inicio() {

      inteiro n, f = 0, m = 0
      real aMaior = 0, aMenor = 0, media, soma = 0

      escreva("Quantas pessoas serão digitadas? ")
      leia(n)

      real altura[n]
      caracter genero[n]

      para(inteiro i = 0; i <= n-1; i++) {
        escreva("Altura da ", i+1, "ª pessoa: ")
        leia(altura[i])
        escreva("Genêro da ", i+1, "ª pessoa: ")
        leia(genero[i])
      }

      para(inteiro i = 0; i <= n-1; i++) {
        se(altura[i] > aMaior) {
          aMaior = altura[i]
        }
        senao {
          se(aMenor == 0) {
            altura[i] < aMenor
            aMenor = altura[i]
          } 
        }
      }
      //Média Altura das Mulheres
      para(inteiro i = 0; i <= n-1; i++) {
        se(genero[i] == "f" ou "F") {
          soma = soma + altura[i]
          f++
        }
      }
      media = soma/f

      para(inteiro i = 0; i <= n-1; i++) {
        se(genero[i] == "m" ou "M") {
          m++
        }
      }

      escreva("MENOR ALTURA = ", aMenor, "\n")
      escreva("MAIOR ALTURA = ", aMaior, "\n")
      escreva("Média das alturas das mulheres = ", Matematica.arredondar(media, 2), "\n")
      escreva("Número de Homens = ", m)
      
  }
}
