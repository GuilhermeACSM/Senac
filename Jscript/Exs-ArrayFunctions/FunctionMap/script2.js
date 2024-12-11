//Primeiro Jeito de Fazer!(ARROW)
const produtos = [ 
    { nome: 'Camiseta', preco: 29.99 }, 
    { nome: 'Calça', preco: 49.99 }, 
    { nome: 'Tênis', preco: 89.99 } 
]; 

const produto = produtos.map(x => x.nome.toUpperCase())
console.log(produto)


//Segundo Jeito de Fazer!(FUNCTION)
const product = [ 
    { nome: 'Camisa', preco: 29.99 }, 
    { nome: 'Bermuda', preco: 49.99 }, 
    { nome: 'Chinelo', preco: 89.99 } 
];

const preco = product.map(x => x.preco < 50)
console.log(preco)