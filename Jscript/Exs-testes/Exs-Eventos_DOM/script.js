let a = window.document.getElementById('teste1')


a.addEventListener('click', clicar)
a.addEventListener('mouseenter', entrar)
a.addEventListener('mouseout', sair)

function clicar() {
    a.innerText = 'Clicou!'
    a.style.background = 'green'
}

function entrar() {
    a.innerText = 'Entrou!'
    a.style.color = 'orange'
    a.style.background = 'black'
}

function sair() {
    a.innerText = '1'
    a.style.background = 'white'
    a.style.color = 'black'
}



