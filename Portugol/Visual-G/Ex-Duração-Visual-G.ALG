Algoritmo "semnome"
// Disciplina   : [Sistemas Para Internet]
// Professor   : Marcos Augusto
// Plataforma   : Visual-G
// Autor(a)    : Guilherme Augusto
// Data atual  : 02/07/2024
Var
// Seção de Declarações das variáveis 

    segundos, horas, minutos: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Digite a duração em segundos: ")
    leia(segundos)
   horas <- segundos \ 3600
    minutos <- (segundos % 3600) \ 60
    segundos <- segundos % 60
    
    escreva(horas, ":", minutos, ":", segundos)


Fimalgoritmo