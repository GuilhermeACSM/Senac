import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList, TextInput, Switch, TouchableOpacity, Keyboard, Modal } from "react-native";


class Entrar extends Component {
  render() {
    return (
    <View style={style.modalView}>
        <Text style={style.textModal}>Seja muito Bem-Vindo!!</Text>
        <Button title='Sair' onPress={this.props.fechar}></Button>
    </View>
    );
  }
}


const style = StyleSheet.create({
  modalView: {
    backgroundColor: '#292929',
    width:'100%',
    height:350,
    borderRadius: 20,
  },
  textModal: {
    textAlign:'center',
    color: '#fff',
    fontSize: 28,
    paddingTop: 15,
  },

});


export default Entrar;
