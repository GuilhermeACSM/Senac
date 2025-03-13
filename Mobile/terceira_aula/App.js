import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, TextInput } from "react-native";

// FLEX

class App extends Component {
  render() {
    return(
      <View style={{flex:1, backgroundColor:'gray', flexDirection:'column', justifyContent:'center'}}>

        <View style={{height:50, backgroundColor:'black'}}></View>
        <View style={{height:50, width:50 ,backgroundColor:'#EC0800'}}></View>
        <View style={{height:50, width:50 ,backgroundColor:'#CA0700'}}></View>
        <View style={{height:50, width:50 ,backgroundColor:'#A80600'}}></View>
        <View style={{height:50, backgroundColor:'black'}}></View>

      </View>
    );
  }
}
export default App; 


