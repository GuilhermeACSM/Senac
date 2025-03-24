import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, FlatList, Image } from "react-native";
//import api from './src/services/api.js';

const Filmes = ({filmes}) => {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Lista de Filmes</Text>
      <FlatList data={filmes} keyExtractor={(item) => String(item.id)} 
      renderItem={({ item }) => (
          <View style={styles.filmeContainer}>
            <Image source={{ uri: item.foto }} style={styles.filmeImagem} />
            <Text style={styles.filmeTitulo}>{item.nome}</Text>
            <Text style={styles.filmeSinopse}>{item.sinopse}</Text>
          </View>
        )}
      />
    </View>
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
  filmeContainer: {
    marginBottom: 20,
    padding: 10,
    backgroundColor: '#fff',
    borderRadius: 8,
    elevation: 3,
    alignItems: 'center',
  },
  filmeImagem: {
    width: '100%',
    height: 150,
    borderRadius: 10,
    marginBottom: 10,
  },
  filmeTitulo: {
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  filmeSinopse: {
    fontSize: 14,
    textAlign: 'center',
    color: '#555',
    marginTop: 5,
  },
});

export default Filmes;
