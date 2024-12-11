// Splice
let horti = ['banana', 'morango', 'maçã', 'abacaxi']
horti.splice(1, 1, 'manga')
horti.splice(2, 1, 'pera')
console.log(horti)

// Reverse
console.log(horti.reverse())

// Join
let arr = ["O", "Guilherme", "é", "muito", "bom"]
console.log(arr.join(" "))

// pop
horti.pop()
console.log("Exluiu o ultimo item", horti)

// shift
horti.shift()
console.log("Excluiu o primeiro item", horti)

// unshift
horti.unshift('banana')
console.log("Adicionou um item no inicio", horti)
