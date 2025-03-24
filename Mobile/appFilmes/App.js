import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, FlatList, Image } from "react-native";

import api from './src/services/api.js';
import Filmes from './src/filmes/index.js';

const App = () => {
  const [filmes, setFilmes] = useState([]);

  useEffect(() => {
    async function loadFilmes() {
      try {
        const resposta = await api.get('r-api/?api=filmes');
        setFilmes(resposta.data);
      } catch (error) {
        console.error("Erro ao buscar filmes:", error);
      }
    }
    loadFilmes();
  }, []);


  return (
    <Filmes filmes = {filmes}/>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f5f5f5',
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 10,
    textAlign: 'center',
  },

});

export default App;
