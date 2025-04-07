import React from 'react';
import { View, Text, TouchableOpacity, Image } from 'react-native';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import styles from './styles';

export default function Cadastro() {
  const navigation = useNavigation();

  return (
    <View style={styles.container}>
      <Animatable.View animation="fadeInDown" style={styles.logo}>
        <Image source={require('../../../assets/Logo1.png')} style={styles.img} />
      </Animatable.View>

      <Animatable.View animation="fadeInUp" style={styles.content}>
        <Text style={styles.title}>Qual tipo de cadastro deseja fazer?</Text>

        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate('PessoaFisica')}
        >
          <Text style={styles.buttonText}>Pessoa Física</Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate('PessoaJuridica')}
        >
          <Text style={styles.buttonText}>Pessoa Jurídica</Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={styles.voltar}
          onPress={() => navigation.goBack()}
        >
          <Text style={styles.voltarText}>Voltar</Text>
        </TouchableOpacity>
      </Animatable.View>
    </View>
  );
}
