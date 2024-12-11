//Primeiro Jeito de Fazer!(ARROW)
const numbers = [1, 4, 9, 16, 25, 81]

const raizQuadrada = numbers.map(num => Math.sqrt(num))

console.log(raizQuadrada) 


//Segundo Jeito de Fazer!(FUNCTION)
const number = [36, 49, 64, 100]

const raizQuadradas = number.map(function(x) {
    return Math.sqrt(x)
})

console.log(raizQuadradas) 