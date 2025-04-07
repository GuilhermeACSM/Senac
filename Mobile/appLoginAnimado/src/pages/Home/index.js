import React from 'react';
import { View, Text, Image, TouchableOpacity } from 'react-native';
import Icon from 'react-native-vector-icons/Feather';
import styles from './styles'


export default function Home({ navigation }) {
  return (
    <View style={styles.container}>
      
      <View style={styles.header}>
        <Image source={require('../../../assets/Logo1.png')} style={styles.logo} />

        <TouchableOpacity onPress={() => navigation.toggleDrawer()}>
          <Icon name="menu" size={30} color="#fff" />
        </TouchableOpacity>
      </View>

      <View style={styles.content}>
        <Text style={styles.text}>Bem-vindo à Home!</Text>
      </View>
    </View>
  );
}


