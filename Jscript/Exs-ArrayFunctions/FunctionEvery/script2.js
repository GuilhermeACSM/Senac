const alunos = [ 
    { nome: 'Ana', nota: 7 }, 
    { nome: 'João', nota: 5 }, 
    { nome: 'Maria', nota: 8 } 
]; 

const nota = alunos.every(x => x.nota >= 6);
console.log(nota)