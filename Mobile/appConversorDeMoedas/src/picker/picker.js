import React, { useState } from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity, ActivityIndicator } from "react-native";
import { Picker } from '@react-native-picker/picker';


export default function PickerItem({moedas}) {

    let moedasItem = moedas.map((item, index) => {
        return(
            <Picker.Item value={item.key} key={index} label={item.label}/>
        )
    })

    return (
        <Picker style={styles.picker}>
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