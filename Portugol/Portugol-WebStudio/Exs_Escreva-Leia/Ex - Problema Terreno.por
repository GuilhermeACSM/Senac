programa {
  inteiro largura, comprimento, area
  real valor, preco
  funcao inicio() {
    escreva("Digite a largura do terreno: ")
    leia(largura)
    escreva("Digite o comprimento do terreno: ")
    leia(comprimento)
    escreva("Digite o valor do metro quadrado: ")
    leia(valor)
    area = largura*comprimento
    preco = area*valor
    escreva("A largura do terreno e de ", area, " e o preco do terreno e de ", preco)
  }
}
