class Pokemon{
    #vida;

    constructor(apelido,tipo,vidaInicial){
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida(){
        return this.#vida;
    }

    sofrerDanos(pontos){
        this.#vida -= pontos;
        if(this.#vida < 0){
            this.#vida = 0;
        }

        console.log(`${this.apelido} | Vida atual apos o ataque: ${this.#vida}`);
    }

    atacar(alvo){
        console.log(`${this.apelido} acabou de atacar ${alvo.apelido}!!`);
        alvo.sofrerDanos(10);
    }
}

class Squitle extends Pokemon{
    constructor(apelido,vidaInicial){
        super(apelido,'Água',vidaInicial);
    }

    atacar(alvo){
        console.log(`${this.apelido} realizou um golpe de jato intenso em ${alvo.apelido}!!`);
        alvo.sofrerDanos(20);
    }
}

class Bulbasaur extends Pokemon{
    constructor(apelido,vidaInicial){
        super(apelido,'Planta',vidaInicial);
    }

    atacar(alvo){
        console.log(`${this.apelido} realizou um golpe de vinhas intenso em ${alvo.apelido}!!`);
        alvo.sofrerDanos(15);
    }
}

poke1 = new Squitle("Lavador a Jato",100);
poke2 = new Bulbasaur("Hera Venenosa",30);

poke2.atacar(poke1);
poke1.atacar(poke2);
poke1.atacar(poke2);

console.log(`Vida atual do poke1: ${poke1.vida}`);
console.log(`Vida atual do poke2: ${poke2.vida}`);

// SyntaxError: Private field '#vida' must be declared in an enclosing class
// console.log(poke1.#vida);

