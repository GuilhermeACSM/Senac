//Somente Positivo = TRUE
const arrayPos = [1, 2, 5, 3, 6]

//Somente Negativo = FALSE
// const arrayPos = [1, 2, 5, 3, -2, 6]

console.log(arrayPos.every(x => x > 0))