import { StyleSheet, Dimensions } from 'react-native';

const { width } = Dimensions.get('window');

export default StyleSheet.create({
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    backgroundColor: '#333', 
    padding: 15,
    elevation: 4, 
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.3,
    shadowRadius: 4,
  },
  logo: {
    width: 100,
    height: 40,
    resizeMode: 'contain',
  },
  overlay: {
    position: 'absolute',
    top: 0,
    bottom: 0,
    left: 0,
    right: 0,
    backgroundColor: 'rgba(0,0,0,0.4)',
  },
  menu: {
    position: 'absolute',
    top: 0,
    bottom: 0,
    right: 0,
    width: width * 0.6,
    backgroundColor: '#111', 
    padding: 20,
  },
  menuText: {
    fontSize: 18,
    marginVertical: 15,
    color: '#fff', 
    fontWeight: 'bold',
  },
  
});
