import React from 'react';
import { View, Text, TouchableOpacity, Animated, Dimensions } from 'react-native';
import styles from './styles.js';

const { width } = Dimensions.get('window');

export default function Menu({ visible, closeMenu, navigation }) {
  const slideAnim = new Animated.Value(width);

  if (visible) {
    Animated.timing(slideAnim, {
      toValue: 0,
      duration: 300,
      useNativeDriver: true,
    }).start();
  } else {
    Animated.timing(slideAnim, {
      toValue: width,
      duration: 300,
      useNativeDriver: true,
    }).start();
  }

  return (
    visible && (
      <TouchableOpacity style={styles.overlay} onPress={closeMenu} activeOpacity={1}>
        <Animated.View style={[styles.menu, { transform: [{ translateX: slideAnim }] }]}>
          <TouchableOpacity onPress={() => { closeMenu(); navigation.navigate('Home'); }}>
            <Text style={styles.menuText}>Home</Text>
          </TouchableOpacity>

          <TouchableOpacity onPress={() => { closeMenu(); navigation.navigate('Cadastro'); }}>
            <Text style={styles.menuText}>Cadastro</Text>
          </TouchableOpacity>

          <TouchableOpacity onPress={() => { closeMenu(); navigation.navigate('Login'); }}>
            <Text style={[styles.menuText, {color:'#e53935'}]}>Sair</Text>
          </TouchableOpacity>
        </Animated.View>
      </TouchableOpacity>
    )
  );
}
