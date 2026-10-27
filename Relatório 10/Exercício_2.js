class Pistola{
    constructor(modelo){
        this.modelo = modelo;
    }


}

class AgenteProtocolo{
    #pistola;
    constructor(codinome, modeloDaPistola){
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade(){
        throw new Error(`O ${this.codinome} deve ser implementado um método`);
    }

    entrarEmCombate(){
        console.log(`Agente: ${this.codinome} | Pistola: ${this.#pistola.modelo}`);
        console.log(this.usarHabilidade());
    }
}

class Controlador extends AgenteProtocolo{
    usarHabilidade(){
        return `La vai a Smoke!`;
    }
}

class Iniciador extends AgenteProtocolo{
    usarHabilidade(){
        return `Olha a bang!`;
    }
}

class Duelista extends AgenteProtocolo{
    usarHabilidade(){
        return `Avançando dentro da Bombsite!`;
    }
}

class Esquadrao{
    #agentes;
    constructor(nome,agentes){
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida(){
        console.log(`PARTIDA ENCONTRADA`);
        console.log(`Equipe: ${this.nome}`);
        this.#agentes.forEach(a => {
            a.entrarEmCombate();
        });
    }

    listarControladores(){
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}

ctrl_1 = new Controlador("Astra","Ghost");
ctrl_2 = new Controlador("Clove","Sheriff");
init_1 = new Iniciador("Gekko","Classic");
duel_1 = new Duelista("Neon","Shorty");

agentes = [ctrl_1,ctrl_2,init_1,duel_1];

esq = new Esquadrao("Omega",agentes);

esq.iniciarPartida();

esq.listarControladores().forEach(a => {
    console.log(`Controlador(a): ${a.codinome}`);
});

agente_1 = new AgenteProtocolo("Hush","Frenzy");
// Error: O Hush deve ser implementado um método
// agente_1.entrarEmCombate();