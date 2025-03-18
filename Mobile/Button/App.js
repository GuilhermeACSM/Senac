import React, { Component } from "react";
import { ScrollView, View, Text, Image, Button } from "react-native";

class App extends Component {

  constructor(props){
    super(props);
    this.state = {cargo: 'Professor'}
    this.entrar = this.entrar.bind(this);
  }

  entrar(cargo){

    this.setState({cargo:cargo});
  }

  render(){
    
    return(
      <View style={{marginTop:100, alignItems:'center'}}>
        <Text>{this.state.cargo}</Text>
        <Button title="Entrar" onPress={ ()=> this.entrar('Guilherme') }></Button>
        <Button title="Entrar" onPress={ ()=> this.entrar('Felipe') }></Button>
        <Button title="Entrar" onPress={ ()=> this.entrar('Daniel') }></Button>
      </View>
    );
  }
}
export default App
