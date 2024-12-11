programa {
    inclua biblioteca Matematica

      real total1, total2, total3, total4, total5
      inteiro quantidade, codigo

  funcao inicio() {

    const real Produto_1  = 5.00
		const real Produto_2  = 3.50
		const real Produto_3  = 4.80
    const real Produto_4  = 8.90
    const real Produto_5  = 7.32

    escreva("Código do produto comprado: ")
    leia(codigo)
    escreva("Quantidade comprada: ")
    leia(quantidade)

    total1 = Produto_1*quantidade
    total2 = Produto_2*quantidade
    total3 = Produto_3*quantidade
    total4 = Produto_4*quantidade
    total5 = Produto_5*quantidade

    escolha (codigo) {
      caso 1:
      escreva("Valor a pagar: R$ ", Matematica.arredondar(total1,2))
        pare

      caso 2:
      escreva("Valor a pagar: R$ ", Matematica.arredondar(total2,2))
        pare

      caso 3:
      escreva("Valor a pagar: R$ ", Matematica.arredondar(total3,2))
        pare

      caso 4:
      escreva("Valor a pagar: R$ ", Matematica.arredondar(total4,2))
        pare

      caso 5:
      escreva("Valor a pagar: R$ ", Matematica.arredondar(total5,2))
        pare
    }

  }
}
