<?php
    class Selecoes {

        //atributos
        public $nome;
        public $vitorias;
        public $derrotas;

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
            Derrotas: {$this->__get('derrotas')}<hr>
            ";
        }
    }

    //instanciando os objetos
    $sp = new Selecoes;
    $rj = new Selecoes;
    $go = new Selecoes;
    $df = new Selecoes;

    //construir os valores com o set
    $sp->__set("nome", "São Paulo");
    $sp->__set("vitorias", 5);
    $sp->__set("derrotas", 1);

    $rj->__set("nome", "Rio de Janeiro");
    $rj->__set("vitorias", 4);
    $rj->__set("derrotas", 2);

    $go->__set("nome", "Goiás");
    $go->__set("vitorias", 4);
    $go->__set("derrotas", 2);

    $df->__set("nome", "Distrito Federal");
    $df->__set("vitorias", 3);
    $df->__set("derrotas", 5);

    echo $sp->saldo();
    echo $rj->saldo();
    echo $go->saldo();
    echo $df->saldo();
?>