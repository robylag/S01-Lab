class FichaDeCriatura{
    constructor(criatura,nivelDePerigo){
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever(){
        return `${this.criatura} é uma criatura de nível ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso{
    #fichas;
    constructor(numero){
        this.numero = numero;
        this.#fichas = [];
    }

    anotar(criatura,nivelDePerigo){
        /*
            Composição, as fichas são criadas dentro do próprio diário
            e pertencem a ele, não sendo criadas independentemente.
        */
        this.#fichas.push(new FichaDeCriatura(criatura,nivelDePerigo));
    }

    exibirFichas(){
        console.log(`Diário número: ${this.numero}`);
        this.#fichas.forEach(c => {
            console.log(c.descrever());
        });
    }
}

class Funcionario{
    constructor(nome,cargo){
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio{
    /*
        Agregação, um funcionario pode ser pertecente a Cabana, mas não necessariamente ela é dependente dela
        podendo existir com ou sem a Cabana os funcionarios
    */
    #funcionarios;
    constructor(dono){
        this.dono = dono;
        this.#funcionarios = [];
    }

    contratar(funcionario){
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas(){
        console.log(`Bem vindo a Cabana do Mistério!`);
        console.log(`Dono da Cabana: ${this.dono}`);
        this.#funcionarios.forEach(f => {
            console.log(`Funcionário: ${f.nome} | ${f.cargo}`);
        });
    }
}

diario = new DiarioMisterioso(3);
diario.anotar("Gnomio",2);
diario.anotar("Homens de Cerâmica",3);
diario.anotar("Bill Cipher",10);
diario.exibirFichas();

f1 = new Funcionario("Dipper Pines","Faxineiro");
f2 = new Funcionario("Sus","Atendente");

cabana = new CabanaDoMisterio("Stan Pines");
cabana.contratar(f1);
cabana.contratar(f2);
cabana.abrirAsPortas();