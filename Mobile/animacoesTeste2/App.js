import React, { useEffect, useRef } from 'react';
import { StyleSheet, Text, View, Animated, TouchableOpacity } from 'react-native';
import * as Animatable from 'react-native-animatable';

const BotaoAnimado = Animatable.createAnimatableComponent(TouchableOpacity);

export default function App() {
  const refBotao = useRef(null);
  const refTexto = useRef(null);

  function clicar () {
    refBotao.current.shake();
    refTexto.current.flash();
  }

  return (
    <View style={styles.container}>
      <Animatable.Text style={styles.txt} 
      /*animation={'bounce'} 
      iterationCount={3}
      iterationDelay={200}
      duration={2000}*/
      ref={refTexto}>Hello World</Animatable.Text>

      <BotaoAnimado style={styles.botao}
      /*animation={'bounce'} 
      iterationCount={3}
      iterationDelay={200}
      duration={2000}*/
      onPress={clicar}
      ref={refBotao}>
        <Text style={styles.botaoTxt}>Animar</Text>
      </BotaoAnimado>
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

  txt: {
    fontSize: 22,
  },

  botao: {
    backgroundColor: '#121212',
    alignItems: 'center',
    justifyContent: 'center',
    width: '70%',
    height: 50,
    marginTop: 10,
  },

  botaoTxt: {
    color: 'white'
  }

});
