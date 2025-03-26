import React, { useState } from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity, ActivityIndicator } from "react-native";
import { Picker } from '@react-native-picker/picker';

import PickerItem from '../picker/picker.js';

export default function Conversor() {

    return (
        <View style={styles.container}>
            <View style={styles.header}>
                <Text style={styles.title}>💱 Conversor de Moedas 💲</Text>
            </View>
            <View style={styles.conversorContainer}>
                <Text style={styles.label}>Selecione sua moeda</Text>

                <PickerItem>
                </PickerItem>

                <Text style={styles.label}>Digite o valor para converter em (R$)</Text>
                <TextInput
                    style={styles.input}
                    keyboardType='numeric'
                    placeholder="0.00"
                />

                <TouchableOpacity style={styles.button}>
                    <Text style={styles.buttonText}>Converter</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.resultContainer}>
                <Text style={styles.resultValue}>BTC</Text>
                <Text style={styles.resultText}>Valor Convertido:</Text>
                <Text style={styles.resultValue}>R$</Text>
            </View>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        backgroundColor: '#f5f5f5',
    },
    header: {
        width: '100%',
        backgroundColor: '#007bff',
        paddingVertical: 20,
        alignItems: 'center',
        justifyContent: 'center',
        borderBottomLeftRadius: 20,
        borderBottomRightRadius: 20,
        elevation: 5,
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 3 },
        shadowOpacity: 0.3,
        shadowRadius: 5,
        marginBottom: 20,
    },
    title: {
        fontSize: 22,
        fontWeight: 'bold',
        color: '#fff',
        textAlign: 'center',
    },
    conversorContainer: {
        width: '90%',
        padding: 20,
        backgroundColor: '#fff',
        borderRadius: 12,
        elevation: 5,
        alignItems: 'center',
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 2 },
        shadowOpacity: 0.2,
        shadowRadius: 4,
    },
    label: {
        fontSize: 16,
        fontWeight: 'bold',
        marginBottom: 10,
        color: '#333',
    },
    input: {
        width: '100%',
        height: 50,
        borderWidth: 1,
        borderColor: '#ccc',
        borderRadius: 8,
        paddingHorizontal: 10,
        marginBottom: 20,
        fontSize: 16,
    },
    button: {
        backgroundColor: '#007bff',
        paddingVertical: 12,
        paddingHorizontal: 20,
        borderRadius: 8,
        alignItems: 'center',
        width: '100%',
    },
    buttonText: {
        color: '#fff',
        fontSize: 18,
        fontWeight: 'bold',
    },
    resultContainer: {
        marginTop: 20,
        padding: 15,
        backgroundColor: '#fff',
        borderRadius: 8,
        elevation: 3,
        alignItems: 'center',
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 2 },
        shadowOpacity: 0.2,
        shadowRadius: 4,
    },
    resultText: {
        fontSize: 18,
        fontWeight: 'bold',
        color: '#333',
    },
    resultValue: {
        fontSize: 24,
        fontWeight: 'bold',
        color: '#007bff',
        marginTop: 5,
    },
});
