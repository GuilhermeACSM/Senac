import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, TextInput, Switch, TouchableOpacity, Keyboard } from "react-native";
import AsyncStorage from '@react-native-async-storage/async-storage';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      entrada: '',
      nome: '',
    };
  }

  async componentDidMount() {
    await AsyncStorage.getItem('nome').then((value) => {this.setState({nome: value})})
  }

  async componentDidUpdate(_, prevState) {
    if(prevState.nome !== this.state.nome) {
      await AsyncStorage.setItem('nome', this.state.nome)
      //alert('Funcionado')
    }
  }

  gravarNome = async () => {
    const { entrada } = this.state
    this.setState({
      nome: this.state.entrada,
    });
    AsyncStorage.setItem('nome', entrada);
    alert('Salvo com Sucesso!');
    Keyboard.dismiss();
  }

  render() {
    return (
      <View style={style.body}>
        <View style={style.container}>
          <TextInput style={style.entrada} value={this.state.entrada} onChangeText={(texto) => this.setState({entrada: texto})}></TextInput>
          <TouchableOpacity onPress={this.gravarNome}>
            <Text style={style.btn}>+</Text>
          </TouchableOpacity>
        </View>
        <Text style={style.nome}>{this.state.nome}</Text>
      </View>
    );
  }
}


const style = StyleSheet.create({
  body: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f5f5f5',
    alignItems:'center',
  },
  container: {
    flexDirection: 'row',
    marginTop: 30,
    padding: 20,
    backgroundColor: '#f5f5f5',
  },
  entrada: {
    width: 350,
    height: 40,
    borderColor: 'black',
    borderWidth: 1,
  },
  btn: {
    height: 40,
    padding: 10,
    backgroundColor: 'black',
    color: '#ffff',
    borderColor: 'black',
    borderWidth: 1,
  },
  nome: {
    fontSize: 30,
    marginTop: 15,

  },
});


export default App;
