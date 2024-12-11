<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maior e Menor Número</title>
</head>
<body>
    <h1>Encontre o Maior e o Menor Número</h1>
    <p>Digite números reais. Digite 0 para terminar e ver o resultado.</p>

    <form action="" method="POST">
        <label for="numero">Número:</label>
        <input type="number" step="any" name="numero" id="numero" required>
        <button type="submit">Enviar</button>
    </form>

    <?php
    session_start();

    // Inicializa as variáveis de maior e menor na sessão
    if (!isset($_SESSION['maior'])) {
        $_SESSION['maior'] = null;
        $_SESSION['menor'] = null;
    }

    // Verifica se um número foi enviado pelo formulário
    if (isset($_POST['numero'])) {
        $numero = (float) $_POST['numero'];

        // Se o número digitado for zero, encerra a entrada e exibe os resultados
        if ($numero == 0) {
            if ($_SESSION['maior'] !== null && $_SESSION['menor'] !== null) {
                echo "<p>O maior número digitado foi: " . $_SESSION['maior'] . "</p>";
                echo "<p>O menor número digitado foi: " . $_SESSION['menor'] . "</p>";
            } else {
                echo "<p>Nenhum número válido foi digitado.</p>";
            }
            
            // Limpa as variáveis da sessão ao terminar
            session_unset();
            session_destroy();
        } else {
            // Atualiza o maior e o menor número na sessão
            if ($_SESSION['maior'] === null || $numero > $_SESSION['maior']) {
                $_SESSION['maior'] = $numero;
            }
            if ($_SESSION['menor'] === null || $numero < $_SESSION['menor']) {
                $_SESSION['menor'] = $numero;
            }
        }
    }
    ?>
</body>
</html>
