<?php
$personagemEscolhido = "Guerreiro";  // Valor padrão
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $personagemEscolhido = $_POST['personagem'];
    header("Location: atributos.php?personagem=" . ($personagemEscolhido));
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Seleção de Personagem</title>
</head>
<body>
    <div class="carrossel-card">
        <div class="carrossel">
            <h2>Selecione o personagem</h2>
            <div id="personagem" class="personagem">Guerreiro</div>
            <form method="POST" action="" id="formPersonagem">
                <input type="hidden" id="personagemEscolhido" name="personagem" value="Guerreiro">
                <button type="submit" class="botao">Confirmar Seleção</button>
            </form>
            <div>
                <button class="botao" onclick="moverCarrossel('esquerda')">←</button>
                <button class="botao" onclick="moverCarrossel('direita')">→</button>
            </div>
        </div>
    </div>

    <script>
        const personagens = ["Guerreiro", "Arqueiro", "Mago", "Ladrão", "Ninja", "Sacerdote", "Anão", "Herói"];
        let indice = 0;

        // Função para mover o carrossel
        function moverCarrossel(direcao) {
            if (direcao === 'esquerda') {
                indice = (indice === 0) ? personagens.length - 1 : indice - 1;
            } else {
                indice = (indice === personagens.length - 1) ? 0 : indice + 1;
            }

            const personagemEscolhido = personagens[indice];
            document.getElementById("personagem").textContent = personagemEscolhido;
            document.getElementById("personagemEscolhido").value = personagemEscolhido;
        }

        document.getElementById('formPersonagem').addEventListener('submit', function(event) {
            event.preventDefault(); 

            const personagemEscolhido = document.getElementById('personagemEscolhido').value;

            window.location.href = "atributos.php?personagem=" + (personagemEscolhido);
        });
    </script>
</body>
</html>
