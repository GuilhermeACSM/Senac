import React, { useState } from 'react';
import { View, Image, TouchableOpacity } from 'react-native';
import Icon from 'react-native-vector-icons/Feather';
import Menu from '../MenuHamburguer/index.js';
import styles from './styles.js';

export default function Header({ navigation }) {
  const [menuVisible, setMenuVisible] = useState(false);

  return (
    <>
      <View style={styles.header}>
        <TouchableOpacity onPress={() => setMenuVisible(true)}>
          <Icon name="menu" size={30} color="#fff" />
        </TouchableOpacity>

        <Image source={require('../../../assets/Logo1.png')} style={styles.logo} />

        <View style={{ width: 30 }} />
      </View>

      <Menu visible={menuVisible} closeMenu={() => setMenuVisible(false)} navigation={navigation} />
    </>
  );
}
