import React, { Component } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, Image } from 'react-native';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      textoFrase: '',
      img: require('./src/biscoito.png')
    };
    this.frases = [
      'Siga os bons e aprenda com eles.', 
 	    'O bom-senso vale mais do que muito conhecimento.', 
  	  'O riso é a menor distância entre duas pessoas.', 
  	  'Deixe de lado as preocupações e seja feliz.',
   	  'Realize o óbvio, pense no improvável e conquiste o impossível.',
  	  'Acredite em milagres, mas não dependa deles.',
      'A maior barreira para o sucesso é o medo do fracasso.'
    ];
    this.quebrarBiscoito = this.quebrarBiscoito.bind(this);
    this.reiniciar = this.reiniciar.bind(this);
  }

  // Adicioar frases aleatorias
  quebrarBiscoito() {
    let numeroAleatorio = Math.floor(Math.random() * this.frases.length)
    this.setState({
      textoFrase: ' "' + this.frases[numeroAleatorio] + '" ',
      img: require('./src/biscoitoAberto.png')
    });
  };

  // Reiniciar
  reiniciar() {
    this.setState({
      textoFrase: '',
      img: require('./src/biscoito.png')
    });
  }

  render(){
    return (
      <View style={styles.container}>
        <Image source={this.state.img} style={styles.img}></Image>
        <Text style={styles.textFrase}>{this.state.textoFrase}</Text>
        <TouchableOpacity style={styles.botao} onPress={this.quebrarBiscoito}>
          <View style={styles.btnArea}>
            <Text style={styles.btnTexto}>Quebrar Biscoito</Text>
          </View>
        </TouchableOpacity>
        <TouchableOpacity style={styles.botao} onPress={this.reiniciar}>
          <View style={styles.btnArea}>
            <Text style={styles.btnTexto}>Reiniciar</Text>
          </View>
        </TouchableOpacity>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#E4C9B0'
  },
  img: {
    width: 250,
    height: 250
  },
  botao:{
    width: 250,
    height: 50,
    padding: 10,
    borderRadius: 10,
    backgroundColor: '#dd7b22',
    margin: 5
  },
  textFrase: {
    color: '#dd7b22',
    fontSize: 20,
    fontStyle: 'italic',
    margin: 20,
    textAlign: 'center',
    fontWeight: 'bold'
  },
  btnArea: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center'
  },
  btnTexto: {
    color: '#000',
    fontSize: 18,
    fontWeight: 'bold',
  }
});

export default App;