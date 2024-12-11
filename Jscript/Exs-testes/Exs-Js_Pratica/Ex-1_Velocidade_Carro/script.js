let a = window.document.getElementById('number')
let b = window.document.getElementById('verify')
let p = window.document.getElementById('parag')

b.addEventListener('click', clicar)

function clicar() {
    //Usar 'value' depois da variavel pois ele quer somente o valor da div/input
    if(a.value > 60) {
        p.innerText = 'Passou do limite de velocidade!'
    }
    else {
        p.innerText = 'Dentro do limite de velocidade!'
    }
}
