let num = document.getElementById('numero')
let lista = document.getElementById('lista')
let res =  document.getElementById('resultado')
let valores = []

// Função para adicionar o número no array!!!
function adicionar() {
    if (isNumero(num.value) && !inLista(num.value, valores)) {
        valores.push(Number(num.value))
        let option = document.createElement("option")
        option.innerHTML = `Valor ${num.value} adicionado`
        lista.appendChild(option)
        console.log(valores)
        res.innerHTML = ""
    } else {
        alert('Número encontrado na lista ou inválido!')
    }
    num.value = ""
    num.focus() 
}

function isNumero(n) {
    if (Number(n) >= 1 && Number(n) <= 100) {
        return true
    } else {
        return false
    }   
}

function inLista(n, l) {
    if (l.indexOf(Number(n)) != -1) {
        return true
    } else {
        return false
    }
}

// Função para finalizar e fazer as contas com os números do array!!!
function finalizar() {
    let total = valores.length
    let soma = 0
    let media = 0

    if (valores.length <= 0) {
        window.alert('Insira valores na lista antes de calcular!')

    } else {
        for (let pos in valores) {
            soma += Number(valores[pos])
        }
        media = soma / valores.length
        Math.round(media, 2)

        valores.sort((a, b) => a - b)

        resultado.innerHTML =  `<p>Ao todo, temos <strong>${total}</strong> números cadastrados!</p> 
                                <p>O menor valor da lista é <strong>${Number(valores[0])}</strong></p>
                                <p>O maior valor da lista é <strong>${Number(valores[total - 1])}</strong></p>
                                <p>Soma dos valores do Vetor: <strong>${soma}</strong></p>
                                <p>A média dos valores da lista é: <strong>${media}</strong>`
        num.focus()
    }
    num.focus()
}

// Jeito de finalzar com biblioteca!!
/*
function finalizar() {
    if( valores.length > 0) {
        let soma = valores.reduce((a, b) => a + b, 0)
        let maior = Math.max(...valores)
        let menor = Math.min(...valores)
        let media = soma / valores.length
        
        res.innerHTML = 
        `
            <p>Total de Números: ${valores.length}</p>
            <p>Maior Número: ${maior}</p>
            <p>Menor Número: ${menor}</p>
            <p>Soma: ${soma}</p>
            <p>Média: ${media.toFixed(2)}</p>
        `
    } else {
        alert('Adicione um número antes de finalizar!')
    }
}
*/