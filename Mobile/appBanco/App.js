import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, TextInput, Switch } from "react-native";
import { Picker } from '@react-native-picker/picker';
import  Slider  from '@react-native-community/slider';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      nome: '',
      idade: '',
      sexo: 'masculino',
      limite: 5000, 
      estudante: false,
    };
  }

  abrirConta = () => {
    const { nome, idade, sexo, limite, estudante } = this.state;

    if (!nome || !idade || !sexo || limite <= 0) {
      alert('Aviso! Por favor, preencha todos os campos corretamente.');
      return;
    } 

    alert(
      `Conta aberta com sucesso! \n\nNome: ${nome} \nIdade: ${idade} \nSexo: ${sexo} \nLimite: R$ ${limite.toFixed(2)} \nEstudante: ${estudante ? 'Sim' : 'Não'}`
    );
  };


  render() {
    return (
      <View style={style.container}>
        <View style={style.header}>
          <Text style={style.bankName}>Temple Bank</Text>
        </View>
  
        <View style={style.form}>
          <Text style={style.label}>Nome:</Text>
          <TextInput
            style={style.input}
            placeholder="Digite seu nome"
            value={this.state.nome}
            onChangeText={(text) => this.setState({ nome: text })}
          />
  
          <Text style={style.label}>Idade:</Text>
          <TextInput
            style={style.input}
            placeholder="Digite sua idade"
            keyboardType="numeric"
            value={this.state.idade}
            onChangeText={(text) => this.setState({ idade: text })}
          />
  
          <Text style={style.label}>Sexo:</Text>
          <Picker
            selectedValue={this.state.sexo}
            style={style.picker}
            onValueChange={(itemValue) => this.setState({ sexo: itemValue })}
          >
            <Picker.Item label="Masculino" value="masculino" />
            <Picker.Item label="Feminino" value="feminino" />
            <Picker.Item label="Não opinar" value="Não opinar" />
          </Picker>
  
          <Text style={style.label}>Limite:</Text>
          <Slider
            style={style.slider}
            minimumValue={250}
            maximumValue={4000}
            step={10}
            value={this.state.limite}
            onValueChange={(value) => this.setState({ limite: value })}
          />
          <Text style={style.limiteText}>R${this.state.limite.toFixed(2)}</Text>
  
          <Text style={style.label}>Você é estudante?</Text>
          <View style={style.switchContainer}>
            <Switch
              style={style.switch}
              value={this.state.estudante}
              onValueChange={(value) => this.setState({ estudante: value })}
            />
            <Text style={style.textSwitch}>{this.state.estudante ? 'Sim' : 'Não'}</Text>
          </View>
        </View>
  
        <Button title="Abrir Conta" onPress={this.abrirConta} />
      </View>
    );
  }
}

const style = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f5f5f5',
  },
  header: {
    marginTop:30,
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 30,
    justifyContent: 'center',
  },
  bankName: {
    fontSize: 30,
    fontWeight: 'bold',
  },
  form: {
    marginBottom: 30,
  },
  label: {
    fontSize: 18,
    marginBottom: 10,
  },
  input: {
    height: 40,
    borderColor: '#000',
    backgroundColor: '#cccc',
    borderWidth: 1,
    marginBottom: 20,
    paddingLeft: 10,
    fontSize: 16,
    borderRadius: 5,
  },
  picker: {
    height: 50,
    width: '100%',
    marginBottom: 20,
  },
  slider: {
    width: '100%',
    marginBottom: 20,
  },
  limiteText: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 20,
  },
  switchContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 20,
  },
  switch: {
    marginRight: 10,
  },
  textSwitch: {
    fontSize: 18,
    marginRight: 10,
  },
});


export default App;