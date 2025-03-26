// https://docs.awesomeapi.com.br/api-de-moedas/json/
// Rota para Bitcoin > Real : all/BTC-BRL

import axios from 'axios';

export const api = axios.create({
    baseURL: 'https://economia.awesomeapi.com.br/json/'
});

