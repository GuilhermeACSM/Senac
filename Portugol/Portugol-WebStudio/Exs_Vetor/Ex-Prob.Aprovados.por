programa {
  funcao inicio() {

      inteiro n 

    escreva("Quantos alunos serão digitados: ")
    leia(n)

    real notaA[n], notaB[n], soma, media 
    cadeia nome[n]

    para(inteiro i = 0; i <= n-1; i++) {
      escreva("Digite nome, primeira nota e segunda nota do ", i+1, "ª aluno: \n")
      leia(nome[i])
      leia(notaA[i])
      leia(notaB[i])
    }

    escreva("Alunos aprovados: \n")
    para(inteiro i = 0; i <= n-1; i++) {
      soma = notaA[i] + notaB[i]
      media = soma/2
      se(media >= 6.0) {
        escreva(nome[i], "\n")
      }
    }
    
    

  }
}
