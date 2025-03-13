import { Component } from 'react';
import { View, Text, Image, Button, StyleSheet, ScrollView, FlatList } from "react-native";


// SCROLLVIEW

/*
class App extends Component {
  render() {
    return(
      <View style={style.container}>
        <View style={style.container2}>
          <ScrollView showsHorizontalScrollIndicator={false} horizontal={true}>
            <View style={style.box1}></View>
            <View style={style.box2}></View>
            <View style={style.box3}></View>
            <View style={style.box4}></View>
            <View style={style.box5}></View>
          </ScrollView>
        </View>

        <View style={style.container3}>
          <ScrollView showsVerticalScrollIndicator={false}>
            <View style={style.box1}></View>
            <View style={style.box2}></View>
            <View style={style.box3}></View>
            <View style={style.box4}></View>
            <View style={style.box5}></View>
          </ScrollView>
        </View>
      </View>
    );
  }
}

const style = StyleSheet.create({
  container:{
    flex:1
  },
  container2:{
    marginTop:50
  },
  container3:{
    marginTop:25
  },
  box1:{
    backgroundColor:'red',
    height:250,
    width:550
  },
  box2:{
    backgroundColor:'green',
    height:250,
    width:550
  },
  box3:{
    backgroundColor:'blue',
    height:250,
    width:550
  },
  box4:{
    backgroundColor:'yellow',
    height:250,
    width:550
  },
  box5:{
    backgroundColor:'gray',
    height:250,
    width:550
  },
});
export default App;
*/

import Pessoa from "./src/Pessoa/index.js";

// FLATLIST
class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      feed: [
        { id: '1', nome: 'Guilherme', idade: 21, email: 'gui@gmail.com' },
        { id: '2', nome: 'Felipe', idade: 26, email: 'felipe@gmail.com' },
        { id: '3', nome: 'Marcos', idade: 35, email: 'marcos@gmail.com' },
        { id: '4', nome: 'Daniel', idade: 39, email: 'daniel@gmail.com' },
        { id: '5', nome: 'Marcelo', idade: 54, email: 'marcelo@gmail.com' },
      ],
    };
  }

  render() {
    return (
      <View style={styles.container}>
        <FlatList
          data={this.state.feed}
          keyExtractor={(item) => item.id}
          renderItem={({ item }) => <Pessoa data={item} />}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginTop: 20,
    padding: 10,
  },
});

export default App;

