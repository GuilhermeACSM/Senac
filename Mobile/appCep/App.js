import React, { useState } from 'react';
import { StyleSheet, Text, View, TextInput, TouchableOpacity, ActivityIndicator, Keyboard } from 'react-native';
import { api } from './src/services/api.js';

export default function App() {
  const [cep, setCep] = useState("");
  const [endereco, setEndereco] = useState(null);
  const [erro, setErro] = useState(null);
  const [loading, setLoading] = useState(false);

  // Função para formatar o CEP no formato #####-###
  function cepFormatado(text) {
    const cepResultado = text
      .replace(/\D/g, '') // Remove tudo que não for número
      .replace(/^(\d{5})(\d{3})$/, '$1-$2'); // Formata para o padrão #####-###
    setCep(cepResultado);
  }

  async function buscarCep() {
    const cepSemMascara = cep.replace(/\D/g, ''); // Remove a máscara para enviar o CEP sem formatação

    if (cepSemMascara.length !== 8) {
      setErro("CEP inválido! Deve conter 8 dígitos.");
      setEndereco(null);
      return;
    }

    setLoading(true);
    setErro(null);
    setEndereco(null);

    setTimeout(async () => {
      try {
        const response = await api.get(`${cepSemMascara}/json/`);
        const data = response.data;

        if (data.erro) {
          setErro("CEP não encontrado.");
        } else {
          setEndereco(data);
        }
      } catch (error) {
        setErro("Erro ao buscar o CEP.");
      }

      setLoading(false);
      Keyboard.dismiss();
    }, 1000); // Delay de 1 segundo (1000ms)
  }

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Buscar CEP</Text>
      <TextInput
        style={styles.input}
        placeholder="Digite o CEP"
        keyboardType="numeric"
        maxLength={10} 
        value={cep}
        onChangeText={cepFormatado}
      />
      <TouchableOpacity style={styles.button} onPress={buscarCep}>
        <Text style={styles.buttonText}>Buscar</Text>
      </TouchableOpacity>

      {loading && <ActivityIndicator size="large" color="#007bff" style={styles.loading} />}
      {erro && <Text style={styles.errorText}>{erro}</Text>}
      {endereco && (
        <View style={styles.resultContainer}>
          <Text style={styles.resultText}>{endereco.logradouro}</Text>
          <Text>{endereco.bairro} - {endereco.localidade}/{endereco.uf}</Text>
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  input: {
    width: '100%',
    padding: 10,
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 5,
    backgroundColor: '#fff',
    marginBottom: 10,
  },
  button: {
    width: '100%',
    padding: 10,
    backgroundColor: '#007bff',
    borderRadius: 5,
    alignItems: 'center',
  },
  buttonText: {
    color: '#fff',
    fontWeight: 'bold',
  },
  errorText: {
    color: 'red',
    marginTop: 10,
  },
  loading: {
    marginTop: 20,
  },
  resultContainer: {
    marginTop: 20,
    padding: 10,
    backgroundColor: '#fff',
    borderRadius: 5,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
    shadowRadius: 2,
    elevation: 2,
  },
  resultText: {
    fontSize: 18,
    fontWeight: 'bold',
  },
});
