<?php

class Personagem {
    private string $nome;
    private string $imagem;
    private int $forca;
    private int $destreza;
    private int $inteligencia;
    private string $habilidade;

    public function __construct(string $nome, string $imagem, int $forca, int $destreza, int $inteligencia, string $habilidade) {
        $this->nome = $nome;
        $this->imagem = $imagem;
        $this->forca = $forca;
        $this->destreza = $destreza;
        $this->inteligencia = $inteligencia;
        $this->habilidade = $habilidade;
    }

    public function getNome(): string {
        return $this->nome;
    }

    public function getImagem(): string {
        return $this->imagem;
    }

    public function getForca(): int {
        return $this->forca;
    }

    public function getDestreza(): int {
        return $this->destreza;
    }

    public function getInteligencia(): int {
        return $this->inteligencia;
    }

    public function getHabilidade(): string {
        return $this->habilidade;
    }
}

class PersonagemFactory {
    private static array $personagens = [
        "Guerreiro" => ["img/cavaleiro.png", 80, 70, 50, "Ataque poderoso"],
        "Arqueiro" => ["img/arqueiro.png", 60, 90, 50, "Tiro certeiro"],
        "Mago" => ["img/bruxo.png", 50, 50, 100, "Magia devastadora"],
        "Ladrão" => ["img/ladrao.png", 60, 85, 55, "Roubo furtivo"],
        "Ninja" => ["img/ninja.png", 70, 95, 35, "Ataque relâmpago"],
        "Sacerdote" => ["img/sacerdote.png", 50, 70, 80, "Cura Divina"],
        "Anão" => ["img/armamento.png", 90, 50, 60, "Mestre de Armas"],
        "Herói" => ["img/espadachim.png", 75, 65, 60, "Força Colossal"],
    ];

    public static function criarPersonagem(string $nome): ?Personagem {
        if (!isset(self::$personagens[$nome])) {
            return null;
        }
        
        [$imagem, $forca, $destreza, $inteligencia, $habilidade] = self::$personagens[$nome];
        return new Personagem($nome, $imagem, $forca, $destreza, $inteligencia, $habilidade);
    }
}

$personagemEscolhido = $_GET['personagem'] ?? null;
$carta = $personagemEscolhido ? PersonagemFactory::criarPersonagem($personagemEscolhido) : null;

if (!$carta) {
    echo "Personagem não encontrado.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Super Trunfo - Personagens</title>
</head>
<body>
    <div class="card">
        <img src="<?= $carta->getImagem() ?>" alt="<?= $carta->getNome() ?>">
        <h2><?= $carta->getNome() ?></h2>
        <div class="attribute"><strong>Força:</strong> <?= $carta->getForca() ?></div>
        <div class="attribute"><strong>Destreza:</strong> <?= $carta->getDestreza() ?></div>
        <div class="attribute"><strong>Inteligência:</strong> <?= $carta->getInteligencia() ?></div>
        <div class="attribute"><strong>Habilidade Especial:</strong> <?= $carta->getHabilidade() ?></div>
    </div>
</body>
</html>
