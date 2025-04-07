import React, { useState, useRef,  useCallback } from 'react';
import { View, Text, TextInput, TouchableOpacity, ActivityIndicator, Image } from 'react-native';
import { useFocusEffect } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import styles from './styles';

const BotaoAnimado = Animatable.createAnimatableComponent(TouchableOpacity);

export default function Login({ navigation }) {
  const [usuario, setUsuario] = useState('');
  const [senha, setSenha] = useState('');
  const [mensagem, setMensagem] = useState({ texto: '', cor: '' });
  const [loading, setLoading] = useState(false);
  const botaoRef = useRef(null);


  // Usando para quando voltar para a pagina de Login zere todos os campos.
  useFocusEffect(
    useCallback(() => {
      setUsuario('');
      setSenha('');
      setMensagem('');
    }, [])
  );

  function loginConcluido() {
    setLoading(true);

    setTimeout(() => {
      if (usuario === 'admin' && senha === '123456') {
        setMensagem({ texto: 'Login bem-sucedido!', cor: 'green' });

        setTimeout(() => {
          navigation.navigate('Home');
        }, 1000);
      } else {
        setMensagem({ texto: 'Usuário ou senha incorreto', cor: 'red' });
        botaoRef.current.shake();
      }

      setLoading(false);
    }, 1000);
  }

  return (
    <View style={styles.container}>
      <Animatable.View animation="fadeInDown" style={styles.logo}>
        <Image source={require('../../../assets/Logo1.png')} style={styles.img} />
      </Animatable.View>

      <Animatable.View animation="fadeInUp" style={styles.inputContainer}>
        <TextInput
          style={styles.input}
          placeholder="E-mail ou CNPJ"
          placeholderTextColor="#aaa"
          value={usuario}
          onChangeText={setUsuario}
        />
        <TextInput
          style={styles.input}
          placeholder="Senha"
          placeholderTextColor="#aaa"
          secureTextEntry
          value={senha}
          onChangeText={setSenha}
        />
      </Animatable.View>

      <Text style={[styles.mensagemText, { color: mensagem.cor }]}>{mensagem.texto}</Text>

      <BotaoAnimado style={styles.button} ref={botaoRef} onPress={loginConcluido} activeOpacity={0.8}>
        {loading ? <ActivityIndicator size="small" color="#000" /> : <Text style={styles.buttonText}>Entrar</Text>}
      </BotaoAnimado>

      <TouchableOpacity onPress={() => navigation.navigate('Cadastro')}>
        <Text style={styles.forgotPassword}>Cadastre-se</Text>
      </TouchableOpacity>

      <Text style={styles.forgotPassword}>Esqueceu sua senha?</Text>
    </View>
  );
}
