import React from 'react';
import { View, Text, StyleSheet, TouchableOpacity } from "react-native";

const Exibir = ({ filme, onClose }) => {
  return (
    <View style={styles.modalContainer}>
      <View style={styles.modalContent}>
        <Text style={styles.modalTitle}>{filme.nome}</Text>
        <Text style={styles.modalSinopse}>{filme.sinopse}</Text>
        <TouchableOpacity style={styles.modalBotao} onPress={onClose}>
          <Text style={styles.modalBotaoTexto}>Fechar</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  modalContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0,0,0,0.5)',
  },
  modalContent: {
    width: '80%',
    padding: 20,
    backgroundColor: 'white',
    borderRadius: 10,
    alignItems: 'center',
  },
  modalTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  modalSinopse: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 20,
  },
  modalBotao: {
    backgroundColor: 'black',
    padding: 10,
    borderRadius: 5,
  },
  modalBotaoTexto: {
    color: 'white',
    textAlign: 'center',
  },
});

export default Exibir;
