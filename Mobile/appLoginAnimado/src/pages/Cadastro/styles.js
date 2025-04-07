import { StyleSheet } from 'react-native';

export default StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1E1E1E',
    justifyContent: 'center',
    alignItems: 'center',
  },
  logo: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  img: {
    width: 250,
    height: 100,
    resizeMode: 'contain',
  },
  content: {
    width: '80%',
    alignItems: 'center',
  },
  title: {
    fontSize: 22,
    color: '#fff',
    marginBottom: 30,
    textAlign: 'center',
  },
  button: {
    backgroundColor: '#ffc72c',
    paddingVertical: 15,
    paddingHorizontal: 30,
    borderRadius: 10,
    marginBottom: 20,
    width: '100%',
    alignItems: 'center',
  },
  buttonText: {
    color: '#000',
    fontSize: 16,
    fontWeight: 'bold',
  },
  voltar: {
    marginTop: 10,
  },
  voltarText: {
    color: '#fff',
    textDecorationLine: 'underline',
  },
});
