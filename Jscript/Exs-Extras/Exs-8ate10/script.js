// Criando um objeto
let pessoa = {
    nome: "Guilherme",
    idade: 20,
    falar: function() {
        console.log(`Olá meu nomé é ${this.nome}`)
    }
}
pessoa.falar()