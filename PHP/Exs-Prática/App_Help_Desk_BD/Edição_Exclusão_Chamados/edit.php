<?php
require_once "../validador_acesso.php";
require "../conexao.php";

$chamados = mysqli_query($link, "SELECT titulo, categoria, descricao FROM TB_CHAMADOS");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>App Help Desk</title>

    <style>
        .card-abrir-chamado {
            padding: 30px 0 0 0;
            width: 100%;
            margin: 0 auto;
        }

        .col-6 a {
            text-decoration: none;
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
        <a class="navbar-brand" href="../home.php">
            <img src="../img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="Logo App Help Desk">
            App Help Desk
        </a>

        <!-- Botão de sair posicionado no canto direito -->
        <div class="ml-auto">
            <a href="../home.php">
                <button class="btn-voltar">
                    <i class="fas fa-sign-out-alt"></i> Voltar
                </button>
            </a>
        </div>
    </nav>

    <div class="container">
        <div class="row">

            <div class="card-abrir-chamado">
                <div class="card">
                    <div class="card-header">
                        Editando chamado
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">

                                <form method="post" action="">
                                    <div class="form-group">
                                        <label>Título</label>
                                        <input type="text" class="form-control" name="titulo">
                                    </div>

                                    <div class="form-group">
                                        <label>Categoria</label>
                                        <select class="form-control" name="categoria" >
                                            <option>Criação Usuário</option>
                                            <option>Impressora</option>
                                            <option>Hardware</option>
                                            <option>Software</option>
                                            <option>Rede</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label>Descrição</label>
                                        <textarea class="form-control" rows="3" name="descricao" required></textarea>
                                    </div>

                                    <div class="row mt-5">
                                        <div class="col-6">

                                            <a href="home.php" class="btn btn-lg btn-warning btn-block" name="voltar">Voltar</a>
                                        </div>

                                        <div class="col-6">
                                            <button class="btn btn-lg btn-info btn-block" type="submit">Abrir</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>