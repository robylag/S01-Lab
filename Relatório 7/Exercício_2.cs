using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Pokemon
{
    public string Especie { get; private set; }
    public int Nivel { get; private set; }

    public Pokemon (string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"O pokemon do tipo {Especie} acabou de realizar um ataque!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta (string especie, int nivel) : base(especie,nivel) {}
    public override void Atacar()
    {
        Console.WriteLine($"O pokemon do tipo {Especie} acabou de realizar um ataque de folhas!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico (string especie, int nivel) : base(especie,nivel) {}
    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"O pokemon do tipo {Especie} acabou de realizar um ataque eletrizante!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
		List<Pokemon> pokemons = new List<Pokemon>();
		pokemons.Add(new Pokemon("Squirtle",19));
		pokemons.Add(new TipoPlanta("Bulbassaur",20));
        pokemons.Add(new Pokemon("Charizard",56));
        pokemons.Add(new TipoEletrico("Pikachu",16));

        foreach(var p in pokemons)
        {
            p.Atacar();
        }
    }
}