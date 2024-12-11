programa {
  inclua biblioteca Matematica
  funcao inicio() {
    inteiro n
    real porcentagem, media, soma, somaM16
    cadeia pessoasP = ""

    soma = 0
    media = 0
    somaM16 = 0

    escreva("Quantas Pessoas serão digitadas: ")
    leia(n)

    cadeia nome[n]
    inteiro idade[n]
    real altura[n]
   
    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Dados da ", i+1, "ª pessoa")
      escreva("\nNome: ")
      leia(nome[i])
      escreva("Idade: ")
      leia(idade[i])
      escreva("Altura: ")
      leia(altura[i])

      //Soma - Média Altura
      soma = soma + altura[i]
      se(idade[i] < 16) {
        somaM16++
        pessoasP += nome[i] + "\n"
      }
    }

      //Média - Altura
    media = soma / n
    escreva("\nAltura média = ", Matematica.arredondar(media, 2))
    porcentagem = (100*somaM16)/n
    escreva("\nPessoas com menos de 16 anos: ", porcentagem, "%")
    escreva("\n", pessoasP)
  }
}
