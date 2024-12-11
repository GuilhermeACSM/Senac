const pessoas = [ 
    { nome: 'Ana', idade: 17 }, 
    { nome: 'João', idade: 20 }, 
    { nome: 'Maria', idade: 19 } 
]; 

const idade = pessoas.filter(x => x.idade >= 18 && x.idade<= 65)
console.log(idade)