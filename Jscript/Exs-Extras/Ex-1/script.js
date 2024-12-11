function adicionar() {

    // Adicionando elemento novo
    let linha = document.createElement("li");
    let texto = document.createTextNode("Js");
    linha.appendChild(texto);
    document.getElementById("lista").appendChild(linha);

    // Editando elemento
    let novaLinha = document.createTextNode("Perna")
    let elemento = document.getElementById("lista").children[0]

    elemento.replaceChild(novaLinha, elemento.childNodes[0])
}

function excluir() {
    let container = document.querySelector("#lista")
    let li = document.querySelector("#lista li")

    container.removeChild(li)
}