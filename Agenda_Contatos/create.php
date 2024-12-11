<?php
require 'conexao.php';

$_sucesso = false;

if ($_POST) {
    $nome = $_POST['nome'];
    $telefones = $_POST['telefone'];
    $emails = $_POST['email'];

    // Criação do contato
    mysqli_query($link, "INSERT INTO TB_PESSOA (NOME) VALUES ('$nome')");
    $id_pessoa = mysqli_insert_id($link);

    // Inserção dos telefones
    $telefoneExpandido = explode(',', $telefones);
    foreach ($telefoneExpandido as $tel) {
        mysqli_query($link, "INSERT INTO TB_TELEFONE (TELEFONE, id_pessoa) VALUES ('$tel', $id_pessoa)");
    }

    // Inserção dos e-mails
    $emailExpandido = explode(',', $emails);
    foreach ($emailExpandido as $em) {
        mysqli_query($link, "INSERT INTO TB_EMAIL (EMAIL, id_pessoa) VALUES ('$em', $id_pessoa)");
    }

    unset($_POST);
    $_sucesso = true;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style/style.css">
    <title>Adicionar Contato</title>
</head>
<body>
<header>
    <div class="tittle">
        <h1>Agenda de Contatos</h1>
    </div>
    <div class="btn-adiciona">
        <a href="index.php"><button class="btn">VOLTAR</button></a>
    </div>
</header>
    <form method="POST" action="" class="form-create">
    <h1>Adicionar Novo Contato</h1>
        <label>Nome: <input type="text" name="nome" required></label>
        <label>Telefone (Separados por vírgula):<input type="text" name="telefone" required></label>
        <label>Email (Separados por vírgula):<input type="text" name="email" required></label>

        <?php
        // Exibe a mensagem de sucesso somente quando a variável $sucesso for verdadeira
        if ($_sucesso) {
            echo '<p style="color: green; font-weight: bold;">Contato adicionado com sucesso!</p>';
        }
        ?>

        <button type="submit" class="salvar">Adicionar</button>
    </form>
</body>
</html>
