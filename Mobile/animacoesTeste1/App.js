import React, { useEffect, useRef } from 'react';
import { StyleSheet, Text, View, Animated } from 'react-native';

export default function App() {

  const larAnimada = useRef(new Animated.Value(0)).current;
  const altAnimada = useRef(new Animated.Value(50)).current;
  //const opacAnimada = useRef(new Animated.Value(1)).current;


  useEffect(() => {

    //Animated.loop(
    Animated.sequence([

      Animated.timing(larAnimada, {
        toValue: 100,
        duration: 1000,
        useNativeDriver: false,
      }),

      Animated.timing(altAnimada, {
        toValue: 100,
        duration: 1000,
        useNativeDriver: false,
      }),

      //Animated.timing(opacAnimada, {
      //toValue: 0, 
      //duration: 2000, 
      //useNativeDriver: false, 
      //})

    ]).start(() => {
      //alert('Finalizou')
    })
    //).start()

  }, []);

  let porcentagemLar = larAnimada.interpolate({
    inputRange: [0, 100],
    outputRange: ['0%', '100%']
  })


  return (
    <View style={styles.container}>
      <Animated.View style={[styles.barra, { width: porcentagemLar, height: altAnimada /*opacity: opacAnimada*/ }]}>
        <Text style={styles.textoBarra}>Carregando</Text>
      </Animated.View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },

  barra: {
    backgroundColor: '#4169e1',
    justifyContent: 'center',
  },

  textoBarra: {
    fontSize: 22,
    textAlign: 'center',
    color: '#fff',
    fontWeight: 'bold',
  },
});
