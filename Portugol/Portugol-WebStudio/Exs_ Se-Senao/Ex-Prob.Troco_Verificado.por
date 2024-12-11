programa {
  inclua biblioteca Matematica


  real preco, quantidade, recebido, troco

  funcao inicio() {
    escreva("Preço unitário do produto: ")
    leia(preco)
    escreva("Quantidade comprada: ")
    leia(quantidade)
    escreva("Dinheiro recebido: ")
    leia(recebido)

    troco = recebido-(preco*quantidade)

    se (troco >= 0) {
      escreva("Troco = ", troco)
    }
    senao {
      escreva("Faltando: R$",Matematica.valor_absoluto(troco)," pra completar o pagamento")
    }

  }
}
