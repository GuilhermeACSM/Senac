//COMANDO DOWNLOAD DO SLIDER

//npm install @react-native-community/slider --save
import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, Switch } from "react-native";
import  Slider  from '@react-native-community/slider';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      valor:0
    };
  }
 
  render() {
    return (

      // step={1} || .toFixed(0) para mudar a quantidade que o slider vai andar.
      <View style={style.container}>
        <Slider minimumValue={0} maximumValue={100} onValueChange={(valorSelecionado) => this.setState({valor: valorSelecionado})} step={1} minimumTrackTintColor='green' maximumTrackTintColor='red' thumbTintColor='black' value={this.state.valor}>
        </Slider>
        <Text>
            {this.state.valor/*.toFixed(0)*/}
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

});
export default App;
