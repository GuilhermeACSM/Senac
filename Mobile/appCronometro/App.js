import React, { Component } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, Image } from 'react-native';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      numero: 0,
      botao: 'Iniciar',
      ultimo: null
    };
    this.iniciar = this.iniciar.bind(this);
    this.limpar = this.limpar.bind(this);

    this.time = null;
  }

  // Iniciar o cronometro
  iniciar() {
    if(this.time != null) { 
      clearInterval(this.time);
      this.time = null
      this.setState({botao: 'Iniciar'});
    }else {
      this.time = setInterval(()=> {
      this.setState({numero: this.state.numero + 0.1})
    }, 100);
      this.setState({botao: 'Parar'});
    }
  }

  // Limpar o cronometro
  limpar() {
    clearInterval(this.time);
    this.time = null
    this.setState({
      ultimo: this.state.numero,
      numero: 0,
      botao: 'Iniciar',
    });
  }
  render() {
    return(
      <View style={styles.container}>
        <Image source={require("./src/cronometro.png")}></Image>
        <Text style={styles.textoTimer}>{this.state.numero.toFixed(1)}</Text>
        <View style={styles.areaBtn}>
          <TouchableOpacity style={styles.botao} onPress={this.iniciar}>
            <Text style={styles.btnTexto}>{this.state.botao}</Text>
          </TouchableOpacity>
          <TouchableOpacity style={styles.botao} onPress={this.limpar}>
            <Text style={styles.btnTexto}>Limpar</Text>
          </TouchableOpacity>
        </View>
        {this.state.ultimo !== null && (
          <View style={styles.areaUltimo}>
            <Text style={styles.textUltimo}>Último tempo: {this.state.ultimo.toFixed(1)}s</Text>
          </View>
        )}
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#00eeff'
  },
  textoTimer: {
    color: "#FFF",
    fontSize: 50,
    marginTop: -160
  },
  areaBtn: {
    flexDirection: 'row',
    marginTop: 100
  },
  botao: {
    width: 150,
    height: 50,
    borderRadius: 5,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: "#FFF",
    margin: 10
  },
  btnTexto: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#000'
  },
  areaUltimo: {
    marginTop: 20,
    padding: 10,
    backgroundColor: 'rgba(255, 255, 255, 0.3)',
    borderRadius: 5
  },
  textUltimo: {
    fontSize: 18,
    color: '#FFF',
    fontWeight: 'bold'
  }
});

export default App;
