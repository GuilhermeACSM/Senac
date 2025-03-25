import React, { useState } from 'react';
import { View, Text, StyleSheet, FlatList, Image, TouchableOpacity, Modal } from "react-native";

import Exibir from '../detalhes';

const Filmes = ({ filmes }) => {
  const [modalVisible, setModalVisible] = useState(false);
  const [selectedFilme, setSelectedFilme] = useState(null);

  const OpenModal = (filme) => {
    setSelectedFilme(filme);
    setModalVisible(true);
  };

  const CloseModal = () => {
    setModalVisible(false);
    setSelectedFilme(null);
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Lista de Filmes</Text>
      <FlatList
        showsVerticalScrollIndicator={false}
        data={filmes}
        keyExtractor={(item) => String(item.id)}
        renderItem={({ item }) => (
          <View style={styles.filmeContainer}>
            <Image source={{ uri: item.foto }} style={styles.filmeImagem} />
            <Text style={styles.filmeTitulo}>{item.nome}</Text>
            <TouchableOpacity style={styles.filmeBotao} onPress={() => OpenModal(item)}>
              <Text style={styles.filmeBotaoTexto}>Ver mais</Text>
            </TouchableOpacity>
          </View>
        )}
      />

      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
      >
        <Exibir filme={selectedFilme} onClose={CloseModal} />
      </Modal>
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
    elevation: 5,
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
  filmeBotao: {
    backgroundColor: 'black',
    padding: 10,
    borderRadius: 5,
    marginTop: 5,
  },
  filmeBotaoTexto: {
    color: 'white',
    textAlign: 'center',
  },
});

export default Filmes;
