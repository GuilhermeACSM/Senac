import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList } from "react-native";

import Noticia from './src/Noticias/index.js';

class App extends Component {
  
  constructor(props) {
    super(props);
    this.state = {
      feed: [
        { id: '1', 
          titulo: '“Conde de Monte Cristo” supera “Emilia Pérez” e lidera indicações no César', 
          imagem:"https://cinepop.com.br/wp-content/uploads/2024/10/o-conde-de-monte-cristo.jpg", 
          noticia:'A Academia das Artes e Técnicas do Cinema da França anunciou os indicados à edição de 2025 do César, também conhecido como o “Oscar francês”. O filme “O Conde de Monte Cristo” liderou com 14 menções.' },
        { id: '2', 
          titulo: '“Os Três Mosqueteiros: versão fiel do clássico', 
          imagem:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuTtvC67FItKfWN72lt0zDPTFRwS8s8xQnA&s", 
          noticia:'Nova adaptação de "Os Três Mosqueteiros" chega aos cinemas como a versão mais fiel da obra de Alexandre Dumas.' },
        { id: '3', 
          titulo: '“Exibição de "V de Vingança" choca na China', 
          imagem:"https://rollingstone.com.br/media/uploads/v-de-vinganca-2005_1.jpg", 
          noticia:'A TV estatal chinesa surpreendeu ao transmitir "V de Vingança", um filme sobre revolta contra um governo autoritário.' },
          
          
      ],
    };
  }

  render() {
    return (
      <View style={styles.container}>
        <View style={styles.header}>
          <Text style={styles.headerText}>Últimas Notícias</Text>
        </View>
        <FlatList
          data={this.state.feed}
          keyExtractor={(item) => item.id}
          renderItem={({ item }) => <Noticia data={item} />}
        />
      </View>
    );
  }
}


/*
class Noticias extends Component {
  render() {
    const { titulo, imagem, noticia } = this.props.data; 

    return (
      <View style={styles.item}>
        <Text style={styles.text}>{titulo}</Text>
        <Image source={{ uri: imagem }} style={styles.image} />
        <Text style={styles.text}>{noticia}</Text>
      </View>
    );
  }
}
*/

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginTop: 30,
    padding: 10,
    backgroundColor:'black'
  },

  header: {
    backgroundColor: '#1E1E1E', 
    width: '100%',
    height: 60,
    justifyContent: 'center',
    alignItems: 'center', 
    marginBottom: 30,
    borderBottomWidth: 2,
    borderBottomColor: '#FFD700',
  },
  headerText: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#FFFFFF', 
  },
  

  /*
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
  */

});

export default App;