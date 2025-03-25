import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, FlatList, Image, ActivityIndicator } from "react-native";

import api from './src/services/api.js';
import Filmes from './src/filmes/index.js';

const App = () => {

  const [filmes, setFilmes] = useState([]);
  const [loading, setLoading] = useState([true]);

  useEffect(() => {
    async function loadFilmes() {
      try {
        const resposta = await api.get('r-api/?api=filmes');
        setFilmes(resposta.data);
        setLoading(false)
      } catch (error) {
        console.error("Erro ao buscar filmes:", error);
      }
    }
    loadFilmes();
  }, []);

  if(loading) {
    return(
      <View style={styles.container}>
        <ActivityIndicator size={50} color="#121212"></ActivityIndicator>
      </View>
    );
  } else {
    return (
      <Filmes filmes = {filmes}/>
    );
  }

  
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#f4f4f4',
  },
});

export default App;
