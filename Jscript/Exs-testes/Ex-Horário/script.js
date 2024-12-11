function loadImage() {
    let mensagem = document.getElementById("mensagem")
    let corpo = document.getElementById("body")
    let img = document.getElementById("imagem")

    let hora = new Date();
    let horas=hora.getHours();
    let minutos=hora.getMinutes();

    if(horas >= 6 && horas <= 11) {
        mensagem.innerText = `Bom dia, agora são ${horas} horas e ${minutos} minutos!`
    }

    else if(horas > 11 && horas <= 18) {
        mensagem.innerText = `Boa tarde, agora são ${horas} horas e ${minutos} minutos!`
        corpo.style.background='orange'
        img.src = 'Boa-Tarde.jpg'
    }

    else if(horas > 18 && horas <= 24) {
        mensagem.innerText = `Boa noite, agora são ${horas} horas e ${minutos} minutos!`
        corpo.style.background='gray'
        img.src = 'Boa-noite.jpg'
    }

    else {
        mensagem.innerText = `Boa madrugada, agora são ${horas} horas e ${minutos} minutos!`
        corpo.style.background='blue'
        img.src = 'Boa-madrugada.jpg'
    }


}
