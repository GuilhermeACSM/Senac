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
                <div id="personagem-container">
                    <img id="personagem-imagem" src="img/cavaleiro.png" alt="Personagem">
                </div>
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
        const personagens = [{
                nome: "Guerreiro",
                imagem: "img/cavaleiro.png"
            },
            {
                nome: "Arqueiro",
                imagem: "img/arqueiro.png"
            },
            {
                nome: "Mago",
                imagem: "img/bruxo.png"
            },
            {
                nome: "Ladrão",
                imagem: "img/ladrao.png"
            },
            {
                nome: "Ninja",
                imagem: "img/ninja.png"
            },
            {
                nome: "Sacerdote",
                imagem: "img/sacerdote.png"
            },
            {
                nome: "Anão",
                imagem: "img/anao.png"
            },
            {
                nome: "Herói",
                imagem: "img/espadachim.png"
            }
        ];

        let indice = 0;

        function moverCarrossel(direcao) {
            if (direcao === 'esquerda') {
                indice = (indice === 0) ? personagens.length - 1 : indice - 1;
            } else {
                indice = (indice === personagens.length - 1) ? 0 : indice + 1;
            }

            const personagemEscolhido = personagens[indice];
            document.getElementById("personagem").textContent = personagemEscolhido.nome;
            document.getElementById("personagem-imagem").src = personagemEscolhido.imagem;
            document.getElementById("personagemEscolhido").value = personagemEscolhido.nome;
        }
    </script>
</body>

</html>