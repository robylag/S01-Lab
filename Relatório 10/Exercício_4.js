class UsuarioDeNen{
    constructor(nome){
        this.nome = nome;
    }

    atacar(alvo){
        console.log(`${this.nome} acabou de realizar um golpe em ${alvo.nome}`);
    }
}

class Intensificador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} acabou de realizar um golpe fortalecido em ${alvo.nome}`);
    }
}

class Materializador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} materializou uma arma e com ela atacou ${alvo.nome}`);
    }
}

class Transmutador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} usou de sua aura para transmutar e atacou ${alvo.nome}`);
    }
}

class Aranha{
    constructor(nome,numero){
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma{
    #aranhas;
    constructor(cidade, aranhas = []){
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas(){
        console.log(`Cidade: ${this.cidade}`);
        this.#aranhas.forEach(a => {
            console.log(`Numero: ${a.numero} | Nome: ${a.nome}`);
        });
    }

    buscarAranha(numero){
        return this.#aranhas.find(a => a.numero === numero);
    }
}

aranha_1 = new Aranha("Franklin Bordeau",7);
aranha_2 = new Aranha("Shizuku Murasaki",8);

trupe = new TrupeFantasma("Yorknew",[aranha_1,aranha_2]);

trupe.revelarAranhas();
res = trupe.buscarAranha(8);

user_nen = [
    new Transmutador("Killua"),
    new Intensificador("Gon"),
    new Materializador("Kaito")
]

user_nen.forEach(u => {
    u.atacar(res);
});