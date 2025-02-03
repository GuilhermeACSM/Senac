<?php
// Classe abstrata para Personagem
abstract class Personagem {
    protected string $nome;
    protected string $imagem;
    protected int $forca;
    protected int $destreza;
    protected int $inteligencia;
    protected string $habilidade;

    public function __construct(string $nome, string $imagem, int $forca, int $destreza, int $inteligencia, string $habilidade) {
        $this->nome = $nome;
        $this->imagem = $imagem;
        $this->forca = $forca;
        $this->destreza = $destreza;
        $this->inteligencia = $inteligencia;
        $this->habilidade = $habilidade;
    }

    public function getNome(): string { return $this->nome; }
    public function getImagem(): string { return $this->imagem; }
    public function getForca(): int { return $this->forca; }
    public function getDestreza(): int { return $this->destreza; }
    public function getInteligencia(): int { return $this->inteligencia; }
    public function getHabilidade(): string { return $this->habilidade; }

    // Métodos comuns para todos os personagens
    public function andarFrente() { return "{$this->nome} anda para frente."; }
    public function andarTras() { return "{$this->nome} anda para trás."; }
    public function esquivar() { return "{$this->nome} se esquiva rapidamente."; }
    public function bater() { return "{$this->nome} ataca com um golpe básico!"; }
    public function golpePoderoso() { return "{$this->nome} ataca com um {$this->habilidade}!"; }
    
    // Método abstrato para golpes poderosos (cada personagem terá um diferente)
    
}

// Classes específicas para cada personagem
class Guerreiro extends Personagem {
    public function __construct() {
        parent::__construct("Guerreiro", "img/cavaleiro.png", 80, 70, 50, "Espada Devastadora");
    }
    public function golpePoderoso() {
        return "{$this->nome} usa uma Espada Devastadora!";
    }
}

class Arqueiro extends Personagem {
    public function __construct() {
        parent::__construct("Arqueiro", "img/arqueiro.png", 60, 90, 50, "Flecha Explosiva");
    }
    public function golpePoderoso() {
        return "{$this->nome} dispara uma Flecha Explosiva!";
    }
}

class Mago extends Personagem {
    public function __construct() {
        parent::__construct("Mago", "img/bruxo.png", 50, 50, 100, "Tempestade Arcana");
    }
    public function golpePoderoso() {
        return "{$this->nome} conjura uma Tempestade Arcana!";
    }
}

class Ladrao extends Personagem {
    public function __construct() {
        parent::__construct("Ladrão", "img/ladrao.png", 60, 85, 55, "Golpe Sombrio");
    }
    public function golpePoderoso() {
        return "{$this->nome} realiza um Golpe Sombrio!";
    }
}

class Ninja extends Personagem {
    public function __construct() {
        parent::__construct("Ninja", "img/ninja.png", 70, 95, 35, "Lâmina Fantasma");
    }
    public function golpePoderoso() {
        return "{$this->nome} executa uma Lâmina Fantasma!";
    }
}

class Sacerdote extends Personagem {
    public function __construct() {
        parent::__construct("Sacerdote", "img/sacerdote.png", 50, 70, 80, "Cura Divina");
    }
    public function golpePoderoso() {
        return "{$this->nome} lança uma Onda de Cura Divina!";
    }
}

class Anao extends Personagem {
    public function __construct() {
        parent::__construct("Anão", "img/armamento.png", 90, 50, 60, "Mestre de Armas");
    }
    public function golpePoderoso() {
        return "{$this->nome} libera uma Torreta Avançada!";
    }
}

class Heroi extends Personagem {
    public function __construct() {
        parent::__construct("Herói", "img/espadachim.png", 75, 65, 60, "Golpe Titânico");
    }
    public function golpePoderoso() {
        return "{$this->nome} desfere um Golpe Titânico!";
    }
}

// Criando os personagens
$personagens = [
    "Guerreiro" => new Guerreiro(),
    "Arqueiro" => new Arqueiro(),
    "Mago" => new Mago(),
    "Ladrão" => new Ladrao(),
    "Ninja" => new Ninja(),
    "Sacerdote" => new Sacerdote(),
    "Anão" => new Anao(),
    "Herói" => new Heroi(),
];

// Obtém o personagem escolhido via GET
$personagemEscolhido = $_GET['personagem'] ?? null;
$carta = $personagemEscolhido && isset($personagens[$personagemEscolhido]) ? $personagens[$personagemEscolhido] : null;

if (!$carta) {
    echo "Personagem não encontrado.";
    exit;
}
?>