const numeros = [1, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50]

const soma = numeros.reduce((prevVal, x) => prevVal + x, 0)
console.log(soma)