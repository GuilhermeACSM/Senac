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
    shadowOpacity: 0.2,
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
    backgroundColor: 'rgba(0,0,0,0.5)',
    zIndex: 9, 
  },
  
  menu: {
    position: 'absolute',
    right: 0,
    top: 0,
    width: width * 0.7,
    height: "100%",
    backgroundColor: '#111',
    padding: 20,
    justifyContent: 'center',
    zIndex: 10, 
  },
  menuItem: {
    marginVertical: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#222', 
    paddingBottom: 10,
  },
  menuText: {
    color: '#fff',
    fontSize: 20,
    fontWeight: 'bold',
    paddingVertical: 15, 
    borderBottomWidth: 1, 
    borderBottomColor: '#555', 
  },
});
