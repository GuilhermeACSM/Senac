import React, { Component } from "react";
import { View, Text, Image, Button, StyleSheet, ScrollView } from "react-native";

class App extends Component {
    constructor(props) {
        super(props);
        this.state = {
            titulo: "Noticias Filmes",
            noticia: "Fasntasy Films",
            img: "https://riolandia.sp.gov.br/wp-content/uploads/2018/05/noticias-web.jpeg"
        };
    }

    trocarNoticia(titulo, noticia, img) {
        this.setState({ titulo, noticia, img });
    }

    render() {
        return (
                <View style={ estilos.container }>
                    <Text style={estilos.titulo}>{this.state.titulo}</Text>
                    <Image style={estilos.img} source={{ uri: this.state.img }} />
                    <Text style={estilos.noticia}>{this.state.noticia}</Text>
                    <View style={estilos.botao}>
                        <Button title="Notícia 1" onPress={() => this.trocarNoticia(
                            "Conde de Monte Cristo lidera indicações no César",
                            "O filme “O Conde de Monte Cristo” liderou com 14 menções na premiação francesa.",
                            "https://cinepop.com.br/wp-content/uploads/2024/10/o-conde-de-monte-cristo.jpg"
                        )} />
                        <Button title="Notícia 2" onPress={() => this.trocarNoticia(
                            "Os Três Mosqueteiros: versão fiel do clássico",
                            "Nova adaptação de 'Os Três Mosqueteiros' chega aos cinemas como a versão mais fiel da obra de Alexandre Dumas.",
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuTtvC67FItKfWN72lt0zDPTFRwS8s8xQnA&s"
                        )} />
                        <Button title="Notícia 3" onPress={() => this.trocarNoticia(
                            'Exibição de "V de Vingança" choca na China',
                            'A TV estatal chinesa surpreendeu ao transmitir "V de Vingança", um filme sobre revolta contra um governo autoritário.',
                            "https://rollingstone.com.br/media/uploads/v-de-vinganca-2005_1.jpg"
                        )} />
                    </View>
                </View>
        );
    }
}

const estilos = StyleSheet.create({
    container:{ 
      alignItems: "center",
      flex:1,
      backgroundColor:'gray',
      justifyContent:'center'
    },
  
    titulo:{
      color:'white',
      fontWeight:'bold',
      fontSize:28,
      textAlign:'center'
    },

    img:{
        width: 400, 
        height: 200, 
        marginVertical: 10
    },
  
    noticia:{
        color:'white',
        textAlign: "justify", 
        paddingHorizontal: 20,
        fontSize:22,
        marginBottom:10
    },

    botao:{
        marginTop:20,
        gap:20, 
        flex:0,
        flexDirection:'row'
    }
  });
export default App;
