
// b.addEventListener('click', clicar)

function clicar() {
    let a = document.getElementById('semana')
    let b = document.getElementById('butao')
    let p = document.getElementById('parag')

    let valor = Number(a.value)
    switch(valor) {
        case 1:
            p.innerText = 'Segunda'
            break
        
        case 2:
            p.innerText = 'Terça'
            break
        
        case 3:
            p.innerText = 'Quarta'
            break

        case 4:
            p.innerText = 'Quinta'
            break

        case 5:
            p.innerText = 'Sexta'
            break

        case 6:
            p.innerText = 'Sábado'
            break

        case 7:
            p.innerText = 'Domingo'

    }
}
