<?php
require_once "validador_acesso.php";
require "conexao.php";

$chamados = mysqli_query($link, "SELECT TB_CHAMADOS.*, TB_USUARIOS.nome 
                                  FROM TB_CHAMADOS 
                                  INNER JOIN TB_USUARIOS ON TB_CHAMADOS.id_usuario = TB_USUARIOS.id_usuario");
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>App Help Desk</title>

    <style>
        .card-consultar-chamado {
            padding: 30px 0 0 0;
            width: 100%;
            margin: 0 auto;
        }

        /* Estilos gerais */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .navbar {
            margin-bottom: 20px;
        }

        .card-home {
            padding: 20px;
            margin: 0 auto;
        }

        .card-text {
            font-size: small;
            font-weight: normal;
        }

        .card-header {
            font-weight: bold;
            background-color: #343a40;
            color: white;
        }

        .row {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .col-6 {
            margin: auto;
            justify-content: center;
            padding: 10px;
        }

        .row a {
            text-decoration: none;
        }

        .card img {
            border-radius: 8px;
            max-width: 100%;
            height: auto;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .card p {
            font-weight: 600;
            color: #343a40;
        }

        /* Estilo do botão de sair */
        .btn-voltar {
            background-color: #007BFF;
            color: white;
            border: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s, transform 0.2s;
        }

        /* Efeito de hover no botão */
        .btn-voltar:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .btn-voltar:focus {
            outline: none;
        }

        /* Responsividade para dispositivos menores */
        @media (max-width: 768px) {
            .row {
                flex-direction: column;
            }

            .col-6 {
                width: 100%;
                margin-bottom: 15px;
            }
        }

        /* Responsividade para dispositivos maiores */
        @media (min-width: 768px) {
            .col-6 {
                width: 100%;
                margin-bottom: 15px;
            }
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="./home.php">
            <img src="img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
            App Help Desk
        </a>

        <!-- Botão de sair posicionado no canto direito -->
        <div class="ml-auto">
            <a href="home.php">
                <button class="btn-voltar">
                    <i class="fas fa-sign-out-alt"></i> Voltar
                </button>
            </a>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="card-consultar-chamado">
                <div class="card">
                    <div class="card-header">
                        Consulta de chamado
                    </div>

                    <div class="card-body">

                        <?php
                        $usuarioId = $_SESSION['id_usuario'];
                        $usuarioPerfil = $_SESSION['perfil'];

                        foreach ($chamados as $chamado) {
                            if ($usuarioPerfil != 'administrador' && $chamado['id_usuario'] != $usuarioId) {
                                continue;
                            }
                            ?>
                            <div class="card mb-3 bg-light">
                                <div class="card-body">
                                    <h5 class="card-title"><?php echo $chamado['titulo'] ?></h5>
                                    <h6 class="card-subtitle mb-2 text-muted"><?php echo $chamado['categoria'] ?></h6>
                                    <p class="card-text"><?php echo $chamado['descricao'] ?></p>

                                    <?php if ($usuarioPerfil == 'administrador') { ?>
                                        <p class="card-text"><strong>Nome do usuário:</strong> <?php echo $chamado['nome']?></p>
                                        <p class="card-text"><strong>ID do usuário:</strong> <?php echo $chamado['id_usuario'] ?></p>
                                    <?php } ?>

                                    <a href="../App_Help_Desk_BD/Edição_Exclusão_Chamados/edit.php?id_usuario=<?php echo $chamado['id_usuario'] ?>"><button type="button" class="btn btn-success">Editar</button></a>

                                    <a href="../App_Help_Desk_BD/Edição_Exclusão_Chamados/delete.php?acao=excluir&id_usuario=<?php echo $chamado['id_usuario'] ?>"><button type="button" class="btn btn-danger">Excluir</button></a>
                                </div>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>