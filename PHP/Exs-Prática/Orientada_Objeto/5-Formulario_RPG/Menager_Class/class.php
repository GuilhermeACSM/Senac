<?php
// Classe abstrata para Personagem
abstract class Personagem {
    protected string $nome;
    protected string $imagem;
    private int $hp;
    private int $forca;
    private int $destreza;
    private int $inteligencia;
    protected string $habilidade;

    /*
    public function __get($atributo){
        return $this->$atributo;
    }
    */

    public function __construct(string $nome, string $imagem, int $hp ,int $forca, int $destreza, int $inteligencia, string $habilidade) {
        $this->nome = $nome;
        $this->imagem = $imagem;
        $this->hp = $hp;
        $this->forca = $forca;
        $this->destreza = $destreza;
        $this->inteligencia = $inteligencia;
        $this->habilidade = $habilidade;
    }

    public function getNome(): string { return $this->nome; }
    public function getImagem(): string { return $this->imagem; }
    public function getHp(): int { return $this->hp; }
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
        parent::__construct("Guerreiro", "img/cavaleiro.png", 100, 80, 40, 30, "Espada Devastadora");
    }
    public function golpePoderoso() {
        return "{$this->nome} usa uma Espada Devastadora!";
    }
}

class Arqueiro extends Personagem {
    public function __construct() {
        parent::__construct("Arqueiro", "img/arqueiro.png", 70, 50, 100, 30, "Flecha Explosiva");
    }
    public function golpePoderoso() {
        return "{$this->nome} dispara uma Flecha Explosiva!";
    }
}

class Mago extends Personagem {
    public function __construct() {
        parent::__construct("Mago", "img/bruxo.png", 60, 30, 50, 110, "Tempestade Arcana");
    }
    public function golpePoderoso() {
        return "{$this->nome} conjura uma Tempestade Arcana!";
    }
}

class Ladrao extends Personagem {
    public function __construct() {
        parent::__construct("Ladrão", "img/ladrao.png", 70, 45, 90, 45, "Golpe Sombrio");
    }
    public function golpePoderoso() {
        return "{$this->nome} realiza um Golpe Sombrio!";
    }
}

class Ninja extends Personagem {
    public function __construct() {
        parent::__construct("Ninja", "img/ninja.png", 80, 60, 90, 20, "Lâmina Fantasma");
    }
    public function golpePoderoso() {
        return "{$this->nome} executa uma Lâmina Fantasma!";
    }
}

class Sacerdote extends Personagem {
    public function __construct() {
        parent::__construct("Sacerdote", "img/sacerdote.png", 70, 30, 50, 100, "Cura Divina");
    }
    public function golpePoderoso() {
        return "{$this->nome} lança uma Onda de Cura Divina!";
    }
}

class Anao extends Personagem {
    public function __construct() {
        parent::__construct("Anão", "img/anao.png", 100, 90, 30, 30, "Machado Sísmico");
    }
    public function golpePoderoso() {
        return "{$this->nome} golpeia o solo com seu machado, criando uma pequena onda de choque!";
    }
}

class Heroi extends Personagem {
    public function __construct() {
        parent::__construct("Herói", "img/espadachim.png", 85, 75, 50, 40, "Golpe Titânico");
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