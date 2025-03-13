import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList } from "react-native";

class Noticias extends Component {
    render() {
      const { titulo, imagem, noticia } = this.props.data; // Definindo variáveis
  
      return (
        <View style={styles.item}>
          <Text style={styles.text}>{titulo}</Text>
          <Image source={{ uri: imagem }} style={styles.image} />
          <Text style={styles.text}>{noticia}</Text>
        </View>
      );
    }
  }

  const styles = StyleSheet.create({
    item: {
      marginBottom: 20,
      padding: 10,
      borderWidth: 1,
      borderRadius: 10,
      borderColor: '#ddd',
      backgroundColor: '#fff',
    },
    text: {
      fontSize: 16,
      marginBottom: 10,
    },
    image: {
      width: '100%',
      height: 200,
      resizeMode: 'cover',
      borderRadius: 10,
    }
  });
  
  export default Noticias;