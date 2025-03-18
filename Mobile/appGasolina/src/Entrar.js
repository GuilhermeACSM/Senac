import { Component } from 'react';
import { View, Text, Image, TouchableOpacity, StyleSheet } from "react-native";

class Entrar extends Component {
    render() {
      const { resultado, fechar, corResultado  } = this.props;

      return (
        <View style={style.modalView}>
          <View style={style.Viewimg}>
            <Image source={require ('../assets/gasoline4.png')} style={style.img} />

            <Text style={[style.textResult, { color: corResultado }]}>
              {resultado}
            </Text>
          </View>
          
          <TouchableOpacity style={style.botao} onPress={fechar}>
            <Text style={style.botaoText}>Calcular Novamente</Text>
          </TouchableOpacity>
        </View>
      );
    }
}

const style = StyleSheet.create({
  modalView: {
    backgroundColor: 'black',
    width: '100%',
    height: '100%',
    justifyContent: 'center',  
    alignItems: 'center',  
  },
  img: {
    borderRadius: 100,
    backgroundColor: 'white',
    width: 200,
    height: 200,
  },
  textResult: {
    color: 'white',
    marginTop: 15,
    marginBottom: 15,
    fontSize: 26,
    textAlign: 'center',  
  },
  Viewimg: {
    marginTop: 30,
    alignItems: 'center',
  },
  botao: {
    backgroundColor: 'black',
    borderColor: 'red',
    borderWidth: 1, 
    paddingVertical: 12,
    paddingHorizontal: 20,
    borderRadius: 8,
    alignItems: 'center',
    marginBottom: 15,
  },
  botaoText: {
    color: 'red',
    fontSize: 16,
    fontWeight: 'bold',
  },
});

export default Entrar;
