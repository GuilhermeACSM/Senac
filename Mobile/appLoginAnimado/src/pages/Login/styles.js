import { StyleSheet } from 'react-native';

export default StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1E1E1E',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
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
  inputContainer: {
    width: '100%',
  },
  input: {
    width: '100%',
    backgroundColor: '#2A2A2A',
    borderRadius: 10,
    padding: 15,
    marginBottom: 15,
    color: '#fff',
  },
  mensagemText: {
    fontSize: 16,
    marginBottom: 10,
  },
  button: {
    backgroundColor: '#ffc72c',
    padding: 15,
    borderRadius: 10,
    alignItems: 'center',
    justifyContent: 'center',
    width: '100%',
    marginTop: 10,
  },
  buttonText: {
    color: '#000',
    fontSize: 18,
    fontWeight: 'bold',
  },
  forgotPassword: {
    color: '#ffc72c',
    marginTop: 15,
    fontSize: 14,
  },
});
