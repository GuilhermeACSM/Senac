function tabuada() {
    // Número digitado pela pessoa para saber a tabuada
    let num = document.getElementById('number')
    // Área da Tabuada
    let tab = document.getElementById('txta')
    
    if (num.value.length == 0) {
        window.alert('Por favor, digite um número!')
    } else {
        let n = Number(num.value)
        //(tab.value = '') serve para sempre retirar a tabuada anterior
        tab.innerHTML = ''
        for (let c = 1 ; c <= 10 ; c++) {
            let resultado = n*c
            //(tab.innerHTML += ) serve para concatenar e adicionar os resultados da conta
            tab.innerHTML += `${n} x ${c} = ${resultado} \n`
        }
    }
}