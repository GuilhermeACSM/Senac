<?php
session_start();

if(!isset($_SESSION['autenticado']) || ($_SESSION['autenticado']) != 'sim') {
    header('location: index.php?login=erro2');

    echo '<div class="text-danger"> Usuário ou senha inválido(s)!</div>';
}
?>