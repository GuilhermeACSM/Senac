import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, TextInput, Switch, TouchableOpacity, Keyboard, Modal } from "react-native";

import Entrar from "./src/Entrar.js";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      visibModal: false,
    };
  }

  entrar = () => { this.setState ({visibModal: true}) }

  sair = () => { this.setState ({visibModal: false}) }

  render() {
    return (
      <View style={style.body}>
        <Button title='Entrar' onPress={this.entrar}></Button>
        <Modal visible={this.state.visibModal} animationType='slide' transparent={true}>
          <View style={style.ContainerPopUp}>
            <Entrar fechar={() => this.sair(false)}></Entrar>
          </View>
        </Modal>
      </View>
    );
  }
}


const style = StyleSheet.create({
  body: {
    flex: 1,
    padding: 20,
    alignItems:'center',
  },
  ContainerPopUp: {
    margin: 15,
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});


export default App;
