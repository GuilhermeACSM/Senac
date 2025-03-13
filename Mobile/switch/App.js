import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, Switch } from "react-native";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      valor:false
    };
  }
  render() {
    return (

      <View style={style.container}>
        <Switch value={this.state.valor} onValueChange={(valorSelecionado) => this.setState({valor: valorSelecionado})}>

        </Switch>
        <Text style={style.text}>
          {this.state.valor ? 'Ligado' : 'Desligado'}
        </Text>
      </View>
    );
  }
}

const style = StyleSheet.create({
  container:{
    flex:1,
    marginTop:60,
  },

  text:{
    textAlign:'center',
    fontSize:20,
  },

});
export default App;
