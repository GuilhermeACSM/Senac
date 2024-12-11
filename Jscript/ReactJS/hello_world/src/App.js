import './App.css';


function MeuComando({ textoBotao }) {
  function handleClick() {
    console.log('você clicou!');
  }


  return (
    <button onClick={handleClick} >{textoBotao}</button>
  );
}

function FormularioLogin() {
  return (
    <>
      <h2>Login:</h2>
      <input type="text" />
      <h2>Senha:</h2>
      <input type="password"/>
      <MeuComando textoBotao={"Salvar"}/>
    </>
  );
}


const products = [
  { title: 'Repolho', id: 1 },
  { title: 'Alho', id: 2 },
  { title: 'Maçã', id: 3 },
  { title: 'Banana', id: 4 },
];

function ListaDeCompras() {
  const items = products.map(p =>
    <li
      key={p.id}
      >
        {p.title}
      </li>
  );

  return (
    <ul>{items}</ul>
  );

}


function App() {
  let logado =true;
  let conteudo;
  if (!logado) {
    conteudo = <FormularioLogin/>
  } else {
    conteudo = <><MeuComando textoBotao={"Avançar"} />
    <MeuComando textoBotao={"Voltar"}/>
    </>
  }
  return (
      <div className="App">
        <header className="App-header">
          {conteudo}
          <ListaDeCompras/>
        </header>
      </div>
  );
}

export default App;
