import { createNativeStackNavigator } from '@react-navigation/native-stack';
import Login from '../pages/Login';
import Cadastro from '../pages/Cadastro';
import PessoaFisica from '../pages/PessoaFisica';
import PessoaJuridica from '../pages/PessoaJuridica';
import Home from '../pages/Home';

const Stack = createNativeStackNavigator();

export default function Routes() {
  return (
    <Stack.Navigator screenOptions={{ headerShown: false }} initialRouteName="Login">
      <Stack.Screen name="Login" component={Login} />
      <Stack.Screen name="Cadastro" component={Cadastro} />
      <Stack.Screen name="PessoaFisica" component={PessoaFisica} />
      <Stack.Screen name="PessoaJuridica" component={PessoaJuridica} />
      <Stack.Screen name="Home" component={Home} />
    </Stack.Navigator>
  );
}
