<?php

// Código para mysqli injection:
// 123'; delete from tb_usuarios where 'a'='a 


if (!empty($_POST['usuario']) && !empty($_POST['senha'])) {
    $dsn = 'mysql:host=localhost;dbname=db_testes';
    $user = 'root';
    $pass = '';

    try {
        $link = new PDO($dsn, $user, $pass);

        $query = "SELECT * FROM TB_USUARIOS 
                WHERE usuario = :usuario 
                AND senha = :senha";

        $res = $link->prepare($query);
        $res ->bindValue(':usuario',$_POST['usuario']);
        $res ->bindValue(':senha',$_POST['senha']);

        $res->execute();

        $usuario = $res->fetch(PDO::FETCH_ASSOC);

    } catch (PDOException $e) {
        // Exibindo o erro
        echo 'ERRO' . $e->getCode() . 'Mensagem' . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>PHP_PDO</title>
</head>

<body>
    <main>
        <form action="index.php" method="POST">
            <label for="usuario">Nome de Usuario:</label>
            <input type="text" name="usuario">
            <label for="senha">Senha:</label>
            <input type="password" name="senha">
            <?php
            if (empty($usuario)) {
                echo "<p class='login_entrar'>";
                echo "Login para entrar!";
                echo "</p>";
            } else {
                echo "<p class='login_logado'>";
                echo 'Logado!';
                echo "</p>";
            }
            ?>
            <button type="submit">Entrar</button>
        </form>
    </main>
</body>

</html>