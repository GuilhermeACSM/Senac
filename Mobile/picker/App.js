//COMANDO DOWNLOAD DO PICKER

//npm install @react-native-picker/picker --save

import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList } from "react-native";
import { Picker } from '@react-native-picker/picker';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      pizza: 0,
      pizzas: [
        { key: 1, nome: 'Calabresa', valor: 59.90 },
        { key: 2, nome: 'Mussarela', valor: 30.00 },
        { key: 3, nome: '5 Queijos', valor: 55.00 },
        { key: 4, nome: 'Frango com Catupiry', valor: 40.90 },
        { key: 5, nome: 'Portuguesa', valor: 45.00 },
      ]
    };
  }
 
  render() {
    let pizzaItem = this.state.pizzas.map((v, k) => {
      return <Picker.Item key={k} value={k} label={v.nome} />;
    });
 
    return (
      <View style={style.container}>
        <Text style={style.logo}>Menu Pizza</Text>
        <Picker
          onValueChange={(itemValue) => this.setState({ pizza: itemValue })}
        >
          <Picker.Item label='Escolha aqui sua pizza' enabled={false} value={0}/>
          {pizzaItem}
        </Picker>
        <Text style={style.pizzas}>Você escolheu pizza de: {this.state.pizzas[this.state.pizza].nome}</Text>
        <Text style={style.valor}>R${this.state.pizzas[this.state.pizza].valor.toFixed(2)}</Text>
      </View>
    );
  }
}

/* JEITO PARA NÃO USAR ARRAY
<Picker.Item key={1} value={1} label='Calabresa' />
<Picker.Item key={2} value={2} label='Frango com Catupiry' />
<Picker.Item key={3} value={3} label='Mussarela' />
<Picker.Item key={4} value={4} label='Cinco Queijos' />
*/ 

const style = StyleSheet.create({
  container:{
    flex:1,
    marginTop:40,
  },

  logo: {
    textAlign:'center',
    fontSize:20,
    marginBottom:15,
    fontWeight:'bold',
  },

  pizzas:{
    textAlign:'center',
    fontSize:15,
    marginBottom:5,
  },

  valor:{
    textAlign:'center',
    fontSize:22,
    fontWeight:'bold',
  },

  caixaTexto:{
    width: '100%',
    height: 100, 
    borderWidth: 2,
    borderColor: 'black',
    borderRadius: 8,
  },

});
export default App;
