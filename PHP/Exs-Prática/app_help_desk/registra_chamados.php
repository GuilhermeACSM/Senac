<?php
require_once "validador_acesso.php";

// Organizando os dados, retirando "|" dos possíveis valores
$titulo = str_replace('|', '-', $_POST['titulo']);
$categoria = str_replace('|', '-', $_POST['categoria']);
$descricao = str_replace('|', '-', $_POST['descricao']);
$idUsuario = str_replace('|', '-', $_SESSION['id']);
$perfilUsuario = str_replace('|', '-', $_SESSION['perfil']);


// Concatenando os valores de cada parâmetro, separado por "|"
$dados = $idUsuario . '|' . $perfilUsuario . '|' . $titulo . '|' . $categoria . '|' . $descricao . PHP_EOL;

// Abrindo o arquivo e armazenando em uma variável
$arquivo = fopen('../../../App_Help_Desk/registros.hd', 'a');

// Escrevendo no arquivo
fwrite($arquivo, $dados);

// Fechando o arquivo
fclose($arquivo);

// Redirecionando o usuário de volta para a página de abertura de chamado
header('Location: abrir_chamado.php?cadastro=efetuado');
exit();
?>