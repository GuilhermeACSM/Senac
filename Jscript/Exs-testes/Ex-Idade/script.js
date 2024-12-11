function clicar() {

    //imagem e texto depois do verificar
    let img = document.getElementById('imagem')
    let parag = document.getElementById('parag')

    //idades e anos subtração
    let ano = document.getElementById('ano')
    let anoSub = Number(ano.value)
    let idade = 2024 - anoSub

    //sexo e genero
    //PERGUNTAR PRO PROFESSOR PRA ENTENDER MELHOR
    let sexo = document.getElementsByName('sexo')[0]
    let genero
    if(sexo.checked) {
        genero = 'M'
    }
    else{
        genero = 'F'
    }
    
    //começo do caso
    switch (genero) {
        case 'M':
            if (idade > 124 || idade < 1) {
                alert('[ERRO] - Digite uma data válida (De 1900 à 2023)')
                img.style.display = 'none'
            }
            else if (idade <= 2) {
                parag.innerText = `Você é um bebê de ${idade} anos!`
                img.src = 'bebemenino.png'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 14) {
                parag.innerText = `Você é uma criança de ${idade} anos!`
                img.src = 'criancamenino.webp'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 18) {
                parag.innerText = `Você é um adolescente de ${idade} anos!`
                img.src = 'adolescentemasc.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 60) {
                parag.innerText = `Você é um homem de ${idade} anos!`
                img.src = 'homem.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else {
                parag.innerText = `Você é um senhor de ${idade} anos!`
                img.src = 'idoso.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            break 


        case 'F':
            if (idade > 124 || idade < 1) {
                alert('[ERRO] - Digite uma data válida (De 1900 à 2023)')
                img.style.display = 'none'
            }
            else if (idade <= 2) {
                parag.innerText = `Você é uma bebê de ${idade} anos!`
                img.src = 'bebemenina.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 14) {
                parag.innerText = `Você é uma criança de ${idade} anos!`
                img.src = 'criancamenina.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 18) {
                parag.innerText = `Você é uma adolescente de ${idade} anos!`
                img.src = 'adolescentefem.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else if (idade <= 60) {
                parag.innerText = `Você é uma mulher de ${idade} anos!`
                img.src = 'mulher.jpg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            else {
                parag.innerText = `Você é uma senhora de ${idade} anos!`
                img.src = 'idosa.jpeg'
                img.style.display = 'block'
                img.style.margin = 'auto'
            }
            break
    }
    
    
}
