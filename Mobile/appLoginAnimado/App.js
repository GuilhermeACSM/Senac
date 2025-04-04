import React, { useState, useRef } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Image } from 'react-native';
import * as Animatable from 'react-native-animatable';

const BotaoAnimado = Animatable.createAnimatableComponent(TouchableOpacity);

export default function Login() {
  const [usuario, setUsuario] = useState('');
  const [senha, setSenha] = useState('');
  const [mensagem, setMensagem] = useState({ texto: '', cor: '' });
  const botaoRef = useRef(null);

  const usuarioCorreto = 'admin';
  const senhaCorreta = '123456';

  function handleLogin() {
    if (usuario === usuarioCorreto && senha === senhaCorreta) {
      setMensagem({ texto: 'Login bem-sucedido!', cor: 'green' });
    } else {
      setMensagem({ texto: 'Usuário ou senha incorreto', cor: 'red' });
      botaoRef.current.shake();
    }
  }

  return (
    <View style={styles.container}>
      <Animatable.View animation="fadeInDown" style={styles.logo}>
        <Image source={require('./assets/Logo1.png')} style={styles.img} />
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

      <BotaoAnimado style={styles.button} ref={botaoRef} onPress={handleLogin} activeOpacity={0.8}>
        <Text style={styles.buttonText}>Entrar</Text>
      </BotaoAnimado>

      <Text style={styles.forgotPassword}>Cadastre-se</Text>
      <Text style={styles.forgotPassword}>Esqueceu sua senha?</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1E1E1E',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
  },
  logo: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  img: {
    width: 250,
    height: 100,
    resizeMode: 'contain',
  },
  inputContainer: {
    width: '100%',
  },
  input: {
    width: '100%',
    backgroundColor: '#2A2A2A',
    borderRadius: 10,
    padding: 15,
    marginBottom: 15,
    color: '#fff',
  },
  mensagemText: {
    fontSize: 16,
    marginBottom: 10,
  },
  button: {
    backgroundColor: '#ffc72c',
    padding: 15,
    borderRadius: 10,
    alignItems: 'center',
    justifyContent: 'center',
    width: '100%',
    marginTop: 10,
  },
  buttonText: {
    color: '#000',
    fontSize: 18,
    fontWeight: 'bold',
  },
  forgotPassword: {
    color: '#ffc72c',
    marginTop: 15,
    fontSize: 14,
  },
});
