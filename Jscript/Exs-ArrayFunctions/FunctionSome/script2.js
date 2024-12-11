const produtos = [ 
    { nome: 'Camiseta', preco: 29.99 }, 
    { nome: 'Calça', preco: 49.99 }, 
    { nome: 'Tênis', preco: 120.00 } 
]; 

const verificador = produtos.some(x => x.preco > 100)
console.log(verificador)