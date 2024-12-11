function soma(a, b, Callback) {
    let sum = a + b;
    Callback(sum, "conta");
}

function multiplicacao(a, b, Callback) {
    let multi = a * b;
    Callback(multi, "conta2");
}

soma(5, 5, exibir);
multiplicacao(6, 6, exibir);

function exibir(num, elementoId) {
    let elemento = document.getElementById(elementoId);
    if (elemento) {
        elemento.innerHTML = num;
    }
};