<?php
require('Menager_Class/class.php');
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Atributos Personagem</title>
</head>
<body>
    <div class="card">
        <div>
            <img src="<?= $carta->getImagem() ?>" alt="<?= $carta->getNome() ?>">
            <h2><?= $carta->getNome() ?></h2>
            <div class="attribute"><strong>Força:</strong> <?= $carta->getForca() ?></div>
            <div class="attribute"><strong>Destreza:</strong> <?= $carta->getDestreza() ?></div>
            <div class="attribute"><strong>Inteligência:</strong> <?= $carta->getInteligencia() ?></div>
            <div class="attribute"><strong>Habilidade Especial:</strong> <?= $carta->getHabilidade() ?></div>
        </div>

        <div>
            <h3>Movimentos:</h3>
            <ul>
                <li><?= $carta->andarFrente(); ?></li>
                <li><?= $carta->andarTras(); ?></li>
                <li><?= $carta->esquivar(); ?></li>
                <li><?= $carta->bater(); ?></li>
                <li><?= $carta->golpePoderoso(); ?></li>
            </ul>
        </div>
    </div>
</body>
</html>
