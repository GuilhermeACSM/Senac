import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity, Alert } from 'react-native';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import styles from './styles';

export default function PessoaFisica() {
  const navigation = useNavigation();

  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [cpf, setCpf] = useState('');
  const [senha, setSenha] = useState('');

  const handleCadastro = () => {
    if (nome === '' || email === '' || cpf === '' || senha === '') {
      Alert.alert('Preencha todos os campos!');
      return;
    }

    Alert.alert('Cadastro realizado com sucesso!');
    navigation.navigate('Login');
  };

  return (
    <View style={styles.container}>
      <Animatable.View animation="fadeInDown">
        <Text style={styles.title}>Cadastro Pessoa Física</Text>
      </Animatable.View>

      <Animatable.View animation="fadeInUp" style={styles.form}>
        <TextInput
          style={styles.input}
          placeholder="Nome"
          placeholderTextColor="#ccc"
          onChangeText={setNome}
        />

        <TextInput
          style={styles.input}
          placeholder="Email"
          placeholderTextColor="#ccc"
          onChangeText={setEmail}
        />

        <TextInput
          style={styles.input}
          placeholder="CPF"
          placeholderTextColor="#ccc"
          onChangeText={setCpf}
        />

        <TextInput
          style={styles.input}
          placeholder="Senha"
          placeholderTextColor="#ccc"
          secureTextEntry
          onChangeText={setSenha}
        />

        <TouchableOpacity style={styles.button} onPress={handleCadastro}>
          <Text style={styles.buttonText}>Cadastrar</Text>
        </TouchableOpacity>

        <TouchableOpacity style={styles.voltar} onPress={() => navigation.goBack()}>
          <Text style={styles.voltarText}>Voltar</Text>
        </TouchableOpacity>
      </Animatable.View>
    </View>
  );
}
