import React from 'react';
import { View, Text, ScrollView, TouchableOpacity } from 'react-native';
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';
import Header from '../../components/Header';
import styles from './styles';

export default function Home({ navigation }) {
  return (
    <View style={styles.container}>
      <Header navigation={navigation} />

      <ScrollView contentContainerStyle={styles.content}>

        <Text style={styles.title}>Conectando pessoas através do esporte!</Text>

        <View style={styles.iconContainer}>
          <Icon name="soccer" size={50} color="#ffc72c" />
          <Icon name="basketball" size={50} color="#ffc72c" />
          <Icon name="volleyball" size={50} color="#ffc72c" />
          <Icon name="tennis" size={50} color="#ffc72c" />
        </View>

        <Text style={styles.subtitle}>
          Nosso objetivo é aproximar pessoas que gostam de praticar esportes, mas não têm com quem jogar.
        </Text>

        <TouchableOpacity 
          style={styles.button} 
          onPress={() => navigation.navigate('Eventos')}
        >
          <Text style={styles.buttonText}>Ver Eventos Disponíveis</Text>
        </TouchableOpacity>

        <TouchableOpacity 
          style={styles.button} 
          onPress={() => navigation.navigate('CriarEvento')}
        >
          <Text style={styles.buttonText}>Criar Novo Evento</Text>
        </TouchableOpacity>

        <Text style={styles.footer}>
          Esporte é saúde, diversão e novas amizades!
        </Text>

      </ScrollView>
    </View>
  );
}
