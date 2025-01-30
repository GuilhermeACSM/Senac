<?php
    class Selecoes {

        //atributos
        public $nome;
        public $vitorias;
        public $derrotas;

        public function __construct() {
            echo 'Objeto Iniciado!<br><br>';
        }

        public function __destruct() {
            echo 'Objeto Destruido!<hr>';
        }

        //métodos

        //configurando o set
        public function __set($atributo, $valor) {
            $this->$atributo = $valor;
        }

        //configurando o get
        public function __get($atributo) {
            return $this->$atributo;
        }

        //buscar info com get
        public function saldo() {
            return "
            Time: {$this->__get('nome')}<br>
            Vitórias: {$this->__get('vitorias')}<br>
            Derrotas: {$this->__get('derrotas')}<br><br>
            ";
        }
    }

    //instanciando os objetos
    $sp = new Selecoes;
    $sp->__set("nome", "São Paulo");
    $sp->__set("vitorias", 5);
    $sp->__set("derrotas", 1);
    echo $sp->saldo();
    unset($sp);
    
    $rj = new Selecoes;
    $rj->__set("nome", "Rio de Janeiro");
    $rj->__set("vitorias", 4);
    $rj->__set("derrotas", 2);
    echo $rj->saldo();
    unset($rj);
   
    $go = new Selecoes;
    $go->__set("nome", "Goiás");
    $go->__set("vitorias", 4);
    $go->__set("derrotas", 2);
    echo $go->saldo();
    unset($go);
    
    $df = new Selecoes;
    $df->__set("nome", "Distrito Federal");
    $df->__set("vitorias", 3);
    $df->__set("derrotas", 5);
    echo $df->saldo();
    unset($df);
?>