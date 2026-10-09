using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CombatenteDeGondor
{
	public string Nome { get; private set; }
	public string Povo { get; private set; }
	public string Posto { get; private set; }
	public string Armamento { get; private set; } = "Desarmado";

	public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

	public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

	public void ApresentarUnidade()
	{
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");
        if(Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
	}
}

public class Program
{
    public static void Main(string[] args)
    {
		CombatenteDeGondor combatente_1 = new CombatenteDeGondor("Frodo Bolseiro","Hobbit","O Portador do Anel");
		CombatenteDeGondor combatente_2 = new CombatenteDeGondor("Samwise Gamgee","Hobbit","Jardineiro");
		CombatenteDeGondor combatente_3 = new CombatenteDeGondor("Aragorn","Dúnedain do Norte","Herdeiro de Isildur");

		combatente_1.Equipar("Espada");
		combatente_2.Equipar("Arco");

		combatente_1.ApresentarUnidade();
		combatente_2.ApresentarUnidade();
		combatente_3.ApresentarUnidade();

		// combatente_3.Posto = "O Portador do Anel";

		// Erro produzido:
		// HelloWorld.cs(54,16): error CS0272: The property or indexer `CombatenteDeGondor.Posto'
		// cannot be used in this context because the set accessor is inaccessible
    }
}