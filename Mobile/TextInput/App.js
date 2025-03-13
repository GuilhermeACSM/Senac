import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, TextInput } from "react-native";


class App extends Component {

  constructor(props) {
    super(props);
    this.state = 
    {
      nome: '',
      mensagemNome: ''
    };
    this.pegarNome = this.pegarNome.bind(this);
    this.aparecerMensagem = this.aparecerMensagem.bind(this);
  }

  pegarNome(texto) {
    if(texto.length > 0) {
      this.setState({nome: texto})
    } else {
      this.setState({nome: ''})
    }
  }

  aparecerMensagem() {
    if (this.state.nome === '') {
      alert('Digite seu nome!');
    } else {
      this.setState({ mensagemNome: 'Olá, seja Bem-Vindo! ' + this.state.nome });
    }
  }
  

  render() {
    return(
      <View style={style.containerBody}>

        <View style={style.contianerInput}>
          <TextInput style={style.textinput} placeholder='Digite aqui o seu nome!' onChangeText={this.pegarNome}></TextInput>
          <View style={style.botao}>
            <Button title='Enviar' onPress={this.aparecerMensagem}></Button>
          </View>
          <Text style={style.text}> {this.state.mensagemNome}</Text>
        </View>

      </View>
    );
  }
}

const style = StyleSheet.create({
  containerBody:{
    flex:1, 
    backgroundColor:'gray', 
    flexDirection:'column', 
    justifyContent:'center'
  },

  contianerInput:{
    flex:1,
    justifyContent:'center',
    alignItems:'center'
  },

  textinput:{
    width:250,
    borderColor:'black',
    borderStyle:'solid',
    borderWidth:2,
    backgroundColor:'white'
  
  },

  text:{
    fontSize:17
  },
  
  botao:{
    marginTop:20,
    marginBottom:20
  }
})
export default App; 

