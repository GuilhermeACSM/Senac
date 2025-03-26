import {  StyleSheet, } from "react-native";
import { Picker } from '@react-native-picker/picker';

export default function PickerItem({ moedas, moedaSelecionada, quandoMudar}) {

    let moedasItem = moedas.map((item, index) => {
        return(
            <Picker.Item value={item.key} key={index} label={item.label}/>
        )
    })

    return (
        <Picker style={styles.picker} selectedValue={moedaSelecionada} onValueChange={(valor) => quandoMudar(valor)}>
            {moedasItem}
        </Picker>
    );
}

const styles = StyleSheet.create({
    picker: {
        width: '100%',
        backgroundColor: '#f0f0f0',
        borderRadius: 8,
        marginBottom: 15,
    },
});