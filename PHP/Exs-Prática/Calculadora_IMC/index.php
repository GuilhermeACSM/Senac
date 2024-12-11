<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Calculadora IMC</title>
</head>
<body>
<form action="index.php" method="POST">
        <div class="container">
            <div class="card">
                <h1>Calculadora IMC</h1>
                <div class="label-float">
                    <input name="peso" type="text" id="nome" placeholder=" " required/>
                    <label id="labelNome" for="peso">Digite seu Peso</label>
                </div>
                <div class="label-float">
                    <input name="altura" type="text" id="usuario" placeholder=" " required/>
                    <label id="labelUsuario" for="altura">Digite sua Altura</label>
                </div>

                <div name="resultado"></div>

                <div class="justify-center">
                    <button type="submit" class='cadastrar'>Cadastrar</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<?php
    $peso = $_POST['peso'];
    $altura = $_POST['altura'];

    if($peso && $altura > 0){
        $imc = $peso / ($altura * $altura);

        switch($imc) {
            case $imc < 18.5:
                print('IMC = '.round($imc, 2). '</br> Abaixo do peso');
                break;
            case $imc >= 18.5 && $imc <= 24.9:
                print('IMC = '.round($imc, 2). '</br> Peso normal');
                break;
            case $imc >= 25 && $imc <= 29.9:
                print('IMC = '.round($imc, 2). '</br> Sobrepeso');
                break;
            case $imc >= 30 && $imc <= 34.9:
                print('IMC = '.round($imc, 2). '</br> Obesidade grau I');
                break;
            case $imc >= 35 && $imc <= 39.9:
                print('IMC = '.round($imc, 2). '</br> Obesidade grau II');
                break;
            case $imc > 40:
                print('IMC = '.round($imc, 2). '</br> Obesidade mórbida');    
        }
        
    } else {
        print('Digite um valor maior que ZERO!');
    }
?>