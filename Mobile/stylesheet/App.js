import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView } from "react-native";

class App extends Component {
  render() {
    return(
      <View style={estilos.container}>
        <Text style={estilos.text1}>Texto1</Text>
        <Text style={estilos.text2}>Texto2</Text>
        <Text style={[estilos.text1, estilos.text2]}>Texto3</Text>
      </View>
    );
  }
}

const estilos = StyleSheet.create({
  container:{
    marginTop:20,
  },

  text1:{
    color:'red',
    fontSize:26,
    textAlign:'center'
  },

  text2:{
    color:'blue',
    fontSize:18,
    
  },

});
export default App;