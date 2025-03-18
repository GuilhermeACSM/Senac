// npx create-expo-app@latest segunda_aula -t blank
import React, { Component } from "react";
import { ScrollView, View, Text, Image } from 'react-native';

class Noticias extends Component {
  render(){
    let image1 = 'https://cinepop.com.br/wp-content/uploads/2024/10/o-conde-de-monte-cristo.jpg'
    let image2 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuTtvC67FItKfWN72lt0zDPTFRwS8s8xQnA&s'
    let image3 = 'https://rollingstone.com.br/media/uploads/v-de-vinganca-2005_1.jpg'

    return (
      <ScrollView>
        <Cartao 
        titulo='“Conde de Monte Cristo” supera “Emilia Pérez” e lidera indicações no César' 
        noticia='A Academia das Artes e Técnicas do Cinema da França anunciou os indicados à edição de 2025 do César, também conhecido como o “Oscar francês”. O filme “O Conde de Monte Cristo” liderou com 14 menções.'
        img={image1} largura={400} altura={200}></Cartao>

        <Cartao 
        titulo="Os Três Mosqueteiros: DArtagnan é a versão mais fiel do clássico francês"
        noticia="Adaptar uma grande obra literária para o cinema não é uma tarefa fácil, principalmente quando já foi explorada em diversas oportunidades, com a promessa de se tornar a versão mais fiel do clássico de Alexandre Dumas, chega aos cinemas nesta quinta-feira (20), “Os Três Mosqueteiros: DArtagnan”, o longa entrega uma versão fiel, com grandes sequências de luta coreografada, com personagens que exalam carisma e romances típicos da época."
        img={image2} largura={400} altura={200}></Cartao>
        
        <Cartao 
        titulo='Exibição de "V de vingança" na China choca espectadores' 
        
        noticia='A rede de televisão estatal da China chocou os telespectadores ao transmitir "V de vingança" (2005), um filme de temática anarquista que mostra uma revolta contra um governo autoritário.
        Os internautas chineses demonstraram surpresa depois de assistirem ao filme, divulgando algumas das mensagens subversivas da produção, incluindo: "As pessoas não devem ter medo do governo, o governo deve ter medo do povo".'
        img={image3} largura={400} altura={200}></Cartao>
      </ScrollView>
    );
  }
}
export default Noticias


class Cartao extends Component {
  render(){

    return(
      <View style={{alignItems:"center"}}> 
        <Text style={{ fontSize: 22, textAlign:"center", marginBottom:20, marginTop:50 }}>{this.props.titulo}</Text>
        <Image source={{uri:this.props.img}} style={{width:this.props.largura, height:this.props.altura}}></Image>                 
        <Text style={{ fontSize: 15, textAlign:"center", marginTop:30, fontWeight:'bolder' }}>{this.props.noticia}</Text>
      </View>
    );
  }
}