import { useState } from "react";

function Contador() {
    const [contagem,setContagem] = useState();

    function handleClick() {
        setContagem(contagem+1);
    }


    return (
        <>
            <h1>Você clicou {contagem} vezes</h1>
            <button onClick={handleClick}>Aumentar</button>
            <button onClick={() => setContagem(contagem-1)}>Diminuir</button>
        </>
    );
}

export default Contador;