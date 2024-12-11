programa {

  inteiro n1, n2, n3, menor

  funcao inicio() {
    escreva("Primeiro valor: ")
    leia(n1)
    escreva("Segundo valor: ")
    leia(n2)
    escreva("Terceiro valor: ")
    leia(n3)
    
    se ((n1 < n2) e (n1 < n3)){
      escreva("Menor = ", n1)
    }
    senao {
      se (n2 < n3){
        escreva("Menor = ", n2)
    }
    senao {
        escreva("Menor = ", n3)
    }
   }
      

  }
}
