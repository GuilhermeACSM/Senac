const pessoas = [ 
    { nome: 'Ana', idade: 17 }, 
    { nome: 'João', idade: 20 }, 
    { nome: 'Maria', idade: 19 } 
]; 

const idades = pessoas.find(x => x.idade > 18)
console.log(idades)