import { useState } from 'react';
import { StyleSheet, View, Button, Text } from 'react-native';

export default function App() {
  const MAX_CAPACITY = 4;
  const [pessoa, setPessoa] = useState([]);

  const addPerson = () => {
    if (pessoa.length < MAX_CAPACITY) {
      setPessoa([...pessoa, true]); 
    }
  };

  const removePerson = () => {
    if (pessoa.length > 0) {
      setPessoa(pessoa.slice(0, -1));
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Mesa do Restaurante</Text>
      <View style={styles.tableContainer}>
        <View style={styles.table}>
          {pessoa.map((_, index) => (
            <View key={index} style={[styles.seat, styles[`seat${index}`]]}>
              <View style={styles.greenBall} />
            </View>
          ))}
        </View>
      </View>
      <View style={styles.buttonContainer}>
        <Button title="Adicionar" onPress={addPerson} disabled={pessoa.length >= MAX_CAPACITY} color="#000" />
        <Button title="Remover" onPress={removePerson} disabled={pessoa.length === 0} color="#000" />
      </View>
      <Text style={styles.info}>{pessoa.length} / {MAX_CAPACITY} lugares ocupados</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#121212',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#fff',
    marginBottom: 35,
  },
  tableContainer: {
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 20,
  },
  table: {
    width: 150,
    height: 150,
    backgroundColor: '#1E1E1E',
    borderRadius: 75,
    justifyContent: 'center',
    alignItems: 'center',
    position: 'relative',
  },
  seat: {
    width: 50,
    height: 50,
    justifyContent: 'center',
    alignItems: 'center',
    position: 'absolute',
  },
  seat0: { top: -30 },
  seat1: { right: -30 },
  seat2: { bottom: -30 },
  seat3: { left: -30 },
  greenBall: {
    width: 20,
    height: 20,
    backgroundColor: 'green',
    borderRadius: 10, 
  },
  buttonContainer: {
    flexDirection: 'row',
    gap: 10,
    marginBottom: 10,
    marginTop: 20,
  },
  info: {
    marginTop: 10,
    fontSize: 16,
    color: '#fff',
  },
});
