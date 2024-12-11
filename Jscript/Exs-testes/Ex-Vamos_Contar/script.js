function clicar() {
    let inicio = document.getElementById('inicio')
    let fim = document.getElementById('fim')
    let passos = document.getElementById('passos')
    let parag = document.getElementById('parag')

    if (inicio.value == 0 || fim.value == 0 || passos.value == 0) {
        window.alert('[ERRO] Faltam Dados!')
    } else {
        parag.innerHTML = 'Contando: <br>'
        let i = Number(inicio.value)
        let f = Number(fim.value)
        let p = Number(passos.value)
        if (p <= 0) {
            // Se colocar (passo = 0) ele ira contar de 1 em 1 (1 - 2 - 3 - 4...)!!
            alert('Passo inválido! Considerando PASSO 1')
            p = 1
        }
        // Contagem crescente
        if (i < f) {
            for(let c = i ; c <= f ; c += p) {
                parag.innerHTML += `${c} \u{1F449}`
            }
        } else {
            // Contagem regressiva
            for(let c = i ; c >= f ; c -= p) {
                parag.innerHTML += `${c} \u{1F449}`
            }
        }
        parag.style.textAlign = 'left'
        parag.innerHTML += `\u{1F3C1}`
    }
}
