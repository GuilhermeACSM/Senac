function myFunction() {
    const message = document.getElementById("message");
    message.innerHTML = ""; // Limpa a mensagem anterior
    let x = document.getElementById("demo").value;

    try { 
        if (x == "") throw "is Empty";
        if (isNaN(x)) throw "not a number";
        if (x > 10) throw "too high";
        if (x < 5) throw "too low";

        // Se todas as condições forem satisfeitas, significa que o número é válido
        message.innerHTML = "Input is correct"; // Mensagem de sucesso
    }
    catch (err) {
        message.innerHTML = "Input " + err; // Mensagem de erro
    } 
    // Não é necessário usar o finally!
    finally {
        message.innerHTML += "<br>Execution completed."; // Mensagem na tela
    }
}