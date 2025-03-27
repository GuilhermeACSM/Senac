import React, { useEffect, useState } from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity, ActivityIndicator } from "react-native";

import  Conversor  from './src/conversor';
import { api } from './src/services/api.js';


export default function App() {

  const [loading, setLoading] = useState(true);
  const [moedas, setMoedas] = useState([]);
  const [moedaSelecionada, setMoedaSelecionada] = useState(null);

  useEffect(() => {
    async function loadMoedas() {
      try {
      const resposta = await api.get("all");
        
        let arrayMoedas = [];
        Object.keys(resposta.data).map((key) => {
          arrayMoedas.push({
            key:key,
            label:key,
            value:key
          });
        });
        //console.log(resposta);
        setMoedas(arrayMoedas);
        setMoedaSelecionada(arrayMoedas[0].key)
        setLoading(false);
      }
      catch(error) {
        console.error("Erro ao converter as moedas:", error);
        setLoading(false);
      }
    }
    loadMoedas();
  }, [])


  if(loading) {
    return(
      <View style={styles.container}>
        <ActivityIndicator size={50} color="#007bff"></ActivityIndicator>
      </View>
    )
  } else {
    return (
      <Conversor moedas={moedas} moedaSelecionada={moedaSelecionada} setMoedaSelecionada={setMoedaSelecionada}/>
    );
  }
  
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#f4f4f4',
  },
});