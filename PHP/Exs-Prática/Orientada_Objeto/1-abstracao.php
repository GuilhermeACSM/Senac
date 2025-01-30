<?php
    
    //modelo
    class JogadorBt {

        //atributos
        public $nome = null;
        public $pais = null;
        public $posicao = null;
        public $parceiro = null;

        //métodos
        function setAtributos($nome, $pais, $posicao, $parceiro) {
            $this->nome = $nome;
            $this->pais = $pais;
            $this->posicao = $posicao;
            $this->parceiro = $parceiro;
        }

        function resumoJogador() {
            return "Jogador: <strong>$this->nome</strong><br/> 
            País: <strong>$this->pais</strong><br/>
            Posição: <strong>$this->posicao</strong><br/>
            Parceiro: <strong>$this->parceiro</strong>";
        }
    }

    //Gianotti
    $gianotti = new JogadorBt;

    $gianotti->setAtributos("Nicolás Gianotti", "França", "Esquerda", "Mattia Spoto");
    echo $gianotti->resumoJogador();
    
    echo "<hr>";

    //Baran
    $baran = new JogadorBt;

    $baran->setAtributos("André Baran", "Brasil", "Direita", "Michele Cappelletti");
    echo $baran->resumoJogador();

?>