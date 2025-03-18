import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, TextInput, Switch, TouchableOpacity, Keyboard, Modal } from "react-native";

import Entrar from "./src/Entrar.js";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      visibModal: false,
      alcool: '',
      gasolina: '',
      resultado: '',
      corResultado: ''
    };
  }

  sair = () => { this.setState ({visibModal: false}) }

  calcular = () => {
    const { alcool, gasolina} = this.state;

    if (!alcool || !gasolina) {
      alert("Preencha ambos os campos!");
      return;
    }
  
    let resultado = '';
    let corResultado = '';

    if (parseFloat(alcool) / parseFloat(gasolina) <= 0.7) {
        resultado = "Álcool é mais vantajoso!";
        corResultado = 'green';
        
      } else {
        resultado = "Gasolina é mais vantajosa!";
        corResultado = 'red';
      }
  
    this.setState({ resultado });
    this.setState({ corResultado });
    this.setState ({visibModal: true});
  };
  

  render() {
    return (
      <View style={style.body}>
          <View style={style.Viewimg}>
            <Image source={require ('./assets/gasoline3.jpg')} style={style.img}></Image>
            <Text style={style.textImg}>Qual melhor opção?</Text>
          </View>

          <View style={style.Viewinput}>
            <View style={style.inputLabel}>
              <Text style={style.label}>Álcool (preço por litro):</Text>
              <TextInput keyboardType='numeric' style={style.input} onChangeText={(valor) => this.setState({ alcool: valor })} 
              value={this.state.alcool}></TextInput>
            </View>

            <View style={style.inputLabel}>
              <Text style={style.label}>Gasolina (preço por litro):</Text>
              <TextInput keyboardType='numeric' style={style.input} onChangeText={(valor) => this.setState({ gasolina: valor })} 
              value={this.state.gasolina}></TextInput>
            </View>

            <TouchableOpacity style={style.botao} onPress={this.calcular}>
              <Text style={style.botaoText}>Calcular</Text>
            </TouchableOpacity>
          </View>

          <Modal visible={this.state.visibModal} animationType='slide'>
            <Entrar fechar={() => this.sair(false)}  resultado={this.state.resultado}  corResultado={this.state.corResultado}></Entrar>
          </Modal>
      </View>
    );
  }
}


const style = StyleSheet.create({
  body: {
    flex: 1,
    padding: 20,
    alignItems: 'center',
    backgroundColor: 'black',
    marginTop: 35,
  },
  img: {
    borderRadius: 100,
    backgroundColor: 'white',
    width: 200,
    height: 200,
  },
  textImg: {
    color: 'white',
    marginTop: 15,
    fontSize: 26,
  },
  Viewimg: {
    marginTop: 30,
    alignItems: 'center',
  },
  label: {
    fontSize: 18,
    color: '#fff',
    marginBottom: 5,
  },
  input: {
    height: 40,
    backgroundColor: '#d3d3d3',
    borderRadius: 5,
    paddingHorizontal: 10,
    fontSize: 16,
  },
  Viewinput: {
    width: '100%',
    marginTop: 65,
  },
  inputLabel: {
    marginBottom: 15,
  },
  botao: {
    backgroundColor: 'red', 
    paddingVertical: 12,
    paddingHorizontal: 20,
    borderRadius: 8,
    alignItems: 'center',
    marginBottom:15,
  },
  botaoText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
});


export default App;
