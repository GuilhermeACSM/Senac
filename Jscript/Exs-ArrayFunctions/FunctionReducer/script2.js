const transacoes = [ 
    { tipo: 'deposito', valor: 100 }, 
    { tipo: 'retirada', valor: 50 }, 
    { tipo: 'deposito', valor: 200 } 
];

const saldoFinal = transacoes.reduce((saldo, transacao) => {
    if (transacao.tipo === 'deposito') {
        return saldo + transacao.valor;
    } else if (transacao.tipo === 'retirada') {
        return saldo - transacao.valor;
    }   
}, 0);

console.log(saldoFinal);