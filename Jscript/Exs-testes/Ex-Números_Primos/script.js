function clicar() {
    let textn = document.getElementById('number')
    let texta = document.getElementById('texta')


    if(textn.value == 0) {
        alert('[ERRO] Digite um número')
        
        texta.innerHTML = ' '
        for(let i = 1; i <= 10 ; i++) {
            
            texta.innerHTML = `${i}`
        }
    }
    let num = Number(textn.value)
    
    
    

}