programa {

    inteiro numero, contador, resultado

  funcao inicio() {

    escreva("Deseja a tabuada para qual valor? ")
		leia(numero)

    para (contador = 1; contador <= 10; contador = contador + 1) 
		{
			resultado = numero * contador 
			escreva (numero, " X ", contador, " = ", resultado , "\n")
		}
  }
}
