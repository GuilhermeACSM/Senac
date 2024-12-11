<?php
require "conexao.php";

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $resultado = mysqli_query($link, "SELECT * FROM TB_INFO WHERE id = $id");
    $dados = mysqli_fetch_assoc($resultado);
}

/* ----- JEITO DO PROFESSOR -----
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $resultado = mysqli_query($link, "SELECT * FROM TB_INFO WHERE id = $id");

    while($dados = mysqli_fetch_assoc($resultado)){
        $id = $dados['id'];
        $servico = $dados['servico'];
        $login = $dados['login'];
        $senha = $dados['senha'];
    };
}
*/ 

if ($_POST) {
    $servico = $_POST['servico'];
    $login = $_POST['login'];
    $senha = $_POST['senha'];

    // UPDATE
    mysqli_query($link, "UPDATE TB_INFO SET SERVICO='$servico', LOGIN='$login', SENHA='$senha' WHERE ID=$id");
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Editar Carteira</title>
</head>
<body>
    <form method="POST" action="">
        <div class="container">
            <div class="card">
                <h1>Editar Carteira</h1>
                <div class="label-float">
                    <input type="text" id="nome" placeholder=" " required name="servico" value="<?php echo ($dados['servico']); ?>"/>
                    <label id="labelNome" for="nome">Nome do Serviço</label>
                </div>
                <div class="label-float">
                    <input type="text" id="usuario" placeholder=" " required name="login" value="<?php echo ($dados['login']); ?>"/>
                    <label id="labelUsuario" for="usuario">Login</label>
                </div>
                <div class="label-float">
                    <input type="password" id="senha" placeholder=" " required name="senha" value="<?php echo ($dados['senha']); ?>"/>
                    <label id="labelSenha" for="senha">Senha</label>
                </div>

                <div class="justify-center">
                    <button type="submit" class='cadastrar'>Atualizar</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
