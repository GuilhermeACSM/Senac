// npx create-expo-app@latest primeiroapp -t blank
import React, { Component } from "react";
import { ScrollView, View, Text, Image } from "react-native";

class App extends Component{
  render(){
    let ola = 'Olá Mundo!'
 
    return(
      <ScrollView>
        <Text style={{ fontSize: 30, textAlign:"center", marginTop:50, marginBottom:20}}> {ola} </Text>
        <Cartao nome='Construir' altura={100} largura={100} ></Cartao>
        <Cartao nome='Destruir' altura={90} largura={90} ></Cartao>
        <Cartao nome='Reformar' altura={80} largura={80} ></Cartao>
      </ScrollView>
    );
  }
}
export default App


// Classe criada para criar um componente Meu!
class Cartao extends Component {
  render(){
    let image = 'https://cdn-icons-png.flaticon.com/512/1033/1033947.png'

    return(
      <View style={{alignItems:"center"}}> 
        <Image source={{uri:image}} style={{width:this.props.largura, height:this.props.altura}}></Image>                 
        <Text style={{ fontSize: 30, textAlign:"center", marginBottom:20, marginTop:20 }}>{this.props.nome}</Text>
      </View>
      
    );
  }
}
