    // Obtém as dimensões da tela!
    let largura = window.screen.availWidth; // Avail ele calcula a dimensão disponívevl do site!
    let altura = window.screen.availHeight; // Se tirar o avail ele calcula a dimensão do monitor!!
    // Váriavel do <p>!
    let parag = document.getElementById('resultado')

function clicar() {
    // Exibe as dimensões no parágrafo!
    parag.innerText = `Largura: ${largura}px \n Altura: ${altura}px`;

    // Exibe a URL atual no console!
    console.log("URL atual:", window.location.href);
}

function site() {
    // Pergunta ao usuário sobre redirecionamento!
    let redirecionar = confirm("Deseja ser redirecionado para https://www.microsoft.com?");
    // Redireciona o usuário para a página que estiver aqui!!
    if (redirecionar) {
        window.location.href = "https://www.microsoft.com";
    }
}

function abrir() {
    myWindow = window.open("https://www.w3schools.com");
}

function fechar() {
    myWindow.close();
}