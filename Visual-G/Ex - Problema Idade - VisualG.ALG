Algoritmo "semnome"
// Disciplina   : [Sistemas Para Internet]
// Professor   : Marcos Augusto
// Plataforma   : Visual-G
// Autor(a)    : Guilherme Augusto
// Data atual  : 02/07/2024
Var
// Seção de Declarações das variáveis 
nome1, nome2: caractere
idade1, idade2, contagem: inteiro
media: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escrevaL("Dados da primeira Pessoa: ")
    escreva("Nome: ")
    leia(nome1)
    escreva("Idade: ")
    leia(idade1)
    contagem <- contagem +1
    escrevaL("Dados da segunda Pessoa: ")
    escreva("Nome: ")
    leia(nome2)
    escreva("Idade: ")
    leia(idade2)
    contagem <- contagem +1
    
    media <- (idade1+idade2)/contagem
    escreva("A idade media de ", nome1, " e ", nome2, " e de ", media)

Fimalgoritmo