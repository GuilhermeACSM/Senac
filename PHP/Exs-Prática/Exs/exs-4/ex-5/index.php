<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa de Mercado</title>
</head>
<body>
    <h1>Pesquisa de Mercado</h1>
    <form action="" method="POST">
        <h2>Informe as respostas dos 10 entrevistados:</h2>
        <?php
        for ($i = 1; $i <= 10; $i++) {
            echo "<label for='sexo$i'>Sexo (M/F): </label>";
            echo "<input type='text' name='sexo[]' id='sexo$i' required><br>";

            echo "<label for='resposta$i'>Resposta (S/N): </label>";
            echo "<input type='text' name='resposta[]' id='resposta$i' required><br><br>";
        }
        ?>
        <button type="submit">Calcular Resultados</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $sexo = $_POST['sexo'];
        $resposta = $_POST['resposta'];

        $sim = 0;
        $nao = 0;
        $homensNao = 0;
        $mulheresNao = 0;
        $totalHomens = 0;
        $totalMulheres = 0;

        // Processa as respostas dos 10 entrevistados
        for ($i = 0; $i < 10; $i++) {
            // Conta quantas pessoas responderam sim ou não
            if (strtoupper($resposta[$i]) == 'S') {
                $sim++;
            } elseif (strtoupper($resposta[$i]) == 'N') {
                $nao++;
            }

            // Conta homens e mulheres que responderam não
            if (strtoupper($sexo[$i]) == 'M') {
                $totalHomens++;
                if (strtoupper($resposta[$i]) == 'N') {
                    $homensNao++;
                }
            } elseif (strtoupper($sexo[$i]) == 'F') {
                $totalMulheres++;
                if (strtoupper($resposta[$i]) == 'N') {
                    $mulheresNao++;
                }
            }
        }

        // Calcula as porcentagens
        $porcentagemHomensNao = $totalHomens > 0 ? ($homensNao / $totalHomens) * 100 : 0;
        $porcentagemMulheresNao = $totalMulheres > 0 ? ($mulheresNao / $totalMulheres) * 100 : 0;

        // Exibe os resultados
        echo "<h2>Resultados:</h2>";
        echo "<p>Número de pessoas que responderam Sim: $sim</p>";
        echo "<p>Número de pessoas que responderam Não: $nao</p>";
        echo "<p>Porcentagem de homens que responderam Não: " . round($porcentagemHomensNao, 2) . "%</p>";
        echo "<p>Porcentagem de mulheres que responderam Não: " . round($porcentagemMulheresNao, 2) . "%</p>";
    }
    ?>
</body>
</html>
