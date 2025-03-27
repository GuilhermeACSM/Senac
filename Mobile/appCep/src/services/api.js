//https://viacep.com.br/ws/json

import axios from 'axios';

export const api = axios.create({
    baseURL: 'https://viacep.com.br/ws/'
});

