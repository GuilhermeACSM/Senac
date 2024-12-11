<?php
// Conexão com o banco
require "conexao.php";

// Exclusão
if (isset($_GET['acao']) && $_GET['acao'] == 'excluir') {
    $id = intval($_GET['id']);
    
    // Excluindo da tabela de e-mails e telefones relacionados
    mysqli_query($link, "DELETE FROM TB_EMAIL WHERE id_pessoa = $id");
    mysqli_query($link, "DELETE FROM TB_TELEFONE WHERE id_pessoa = $id");
    
    // Excluindo da tabela principal
    mysqli_query($link, "DELETE FROM TB_PESSOA WHERE id_pessoa = $id");

    // Redireciona após exclusão
    header('Location: delete.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Agenda de Contatos</title>
</head>
<body>
<header>
        <div class="tittle">
            <h1>Agenda de Contatos</h1>
        </div>
        <div class="btn-adiciona">
            <a href="create.php"><button class="btn">ADICIONAR CONTATO</button></a>
        </div>
    </header>
    <main>
        <div class="msg-delete">
            <h1>DELETADO COM SUCESSO!! <a href="index.php">VOLTAR</a></h1>
        </div>
    </main>
</body>
</html>
