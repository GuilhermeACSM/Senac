function calcularMediaESoma() {
    let N;
    let soma = 0;
    let vet = []; // vetor para armazenar os números

    // Solicitar números
    do {
        N = parseInt(prompt("Quantos números você vai digitar?"));
    } while (N <= 0 || N > 10);

    for (let i = 0; i < N; i++) {
        let numero = parseInt(prompt("Digite o número:"));
        vet.push(numero); // Adicionar número ao vetor
        soma += numero;   // Atualizar a soma
    }
    
    let media = soma / 2;

    // Exibir resultados tabela
    document.write('<table>');
    document.write('<tr><th>Valores</th></tr>');
    for (let i = 0; i < N; i++) {
        document.write('<tr><td>' + vet[i] + '</td></tr>'); // Exibir os valores
    }
    document.write('<tr><td><strong>Soma: ' + soma + '</strong></td></tr>'); 
    document.write('<tr><td><strong>Média: ' + media + '</strong></td></tr>'); 
    document.write('</table>');
}

calcularMediaESoma();