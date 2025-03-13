import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList } from "react-native";

class Pessoa extends Component {
    render() {
      return (
        <View style={styles.item}>
          <Text style={styles.text}>Nome: {this.props.data.nome}</Text>
          <Text style={styles.text}>Idade: {this.props.data.idade}</Text>
          <Text style={styles.text}>Email: {this.props.data.email}</Text>
        </View>
      );
    }
  }

  const styles = StyleSheet.create({
    item: {
      justifyContent:'center',
      height:250,
      padding: 15,
      borderBottomWidth: 1,
      borderBottomColor: '#ddd',
    },
    text: {
      fontSize: 18,
    },
  });

  export default Pessoa;