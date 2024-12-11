Algoritmo "semnome"
// Disciplina   : [Sistemas para Internet]
// Professor   : Marcos Augusto
// Descrição   : Iniciando Lógica! (função)
// Autor(a)    : Guilherme Augusto Moreira
// Data atual  : 01/07/2024
Var
// Seção de Declarações das variáveis
         nome: caractere
         Peso, altura, imc: real
         idade: inteiro
         soma: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
       escreva("Digite seu nome completo: ")
       leia(nome)
       escreva("Digite sua idade: ")
       leia(idade)
       escreva("Digite seu peso: ")
       leia(peso)
       escreva("Digite sua altura: ")
       leia(altura)
       imc <- peso/(altura*altura)
       escreva("O funcionario ", nome, " tem ", altura, " de altura ", " e tem ", idade, " anos ", " com o imc de ", imc:4:2)
Fimalgoritmo