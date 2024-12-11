<?php
require_once "validador_acesso.php";
?>

<html lang="pt-br">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>App Help Desk</title>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
  <style>
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

    .card-body {
      text-align: center;
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
    .btn-sair {
      background-color: #dc3545;
      color: white;
      border: none;
      font-weight: bold;
      padding: 10px 20px;
      border-radius: 5px;
      text-align: center;
      transition: background-color 0.3s, transform 0.2s;
    }

    /* Efeito de hover no botão */
    .btn-sair:hover {
      background-color: #c82333;
      transform: scale(1.05);
    }

    .btn-sair:focus {
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

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="./home.php">
      <img src="img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
      App Help Desk
    </a>

    <!-- Botão de sair posicionado no canto direito -->
    <div class="ml-auto">
      <a href="logout.php">
        <button class="btn-sair">
          <i class="fas fa-sign-out-alt"></i> Sair
        </button>
      </a>
    </div>
  </nav>

  <div class="container">
    <div class="row justify-content-center">
      <div class="card-home col-md-8">
        <div class="card">
          <div class="card-header">
            Menu
          </div>
          <div class="card-body">
            <div class="row">
              <!-- Link para abrir chamado -->
              <a href="abrir_chamado.php" class="col-6">
                <div class="card p-3 text-center">
                  <img src="img/formulario_abrir_chamado.png" width="70" height="70" alt="Abrir Chamado">
                  <p>Abrir Chamado</p>
                </div>
              </a>
              <!-- Link para consultar chamado -->
              <a href="consultar_chamado.php" class="col-6">
                <div class="card p-3 text-center">
                  <img src="img/formulario_consultar_chamado.png" width="70" height="70" alt="Consultar Chamado">
                  <p>Consultar Chamado</p>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
