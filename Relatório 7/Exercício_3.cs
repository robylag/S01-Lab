using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Grimorio
{
    public string FeiticoFavorito { get; private set; } = "Nenhum";
	public void DefinirFeitico(string feitico)
	{
		this.FeiticoFavorito = feitico;
	}
    public void Abrir()
    {
		Console.WriteLINE("Abrindo grimorio. . .");
        Console.WriteLine($"Feitico favorito: {FeiticoFavorito}");
    }
}
public class Companheiro
{
    public string Nome { get; private set; }
    public string Funcao { get; private set; }
	public Companheiro(string nome, string funcao)
	{
    	this.Nome = nome;
    	this.Funcao = funcao;
	}
    public void Apresentar()
    {
        Console.WriteLine($"-> {Nome}");
		Console.WriteLine($"    * {Funcao}");
    }
}
public class Maga
{
	public string Nome { get; private set; }
	public Grimorio Grim { get; private set; }
	private List<Companheiro> Comps;
	public Maga(string nome)
	{
    	this.Nome = nome;

		// Composição, o grimório é criado pela própria Maga,
    	// estabelecendo uma relação de posse entre os objetos.
    	this.Grim = new Grimorio();

		// Agregação: a Maga mantém referências a companheiros
    	// criados independentemente dela.
		this.Comps = new List<Companheiro>();
	}
	public void Recrutar(Companheiro p){
		Comps.Add(p);
	}
	public void MostrarGrupo(){
		foreach(var i in Comps){
			i.Apresentar();
		}
	}
}
public class Program
{
    public static void Main(string[] args)
    {
		Companheiro c1 = new Companheiro("Walter White","Lider");
		Companheiro c2 = new Companheiro("Jessie Pink","Atacante");
		Maga m = new Maga("Os feiticeiros da balada");
		m.Recrutar(c1);
		m.Recrutar(c2);
		m.Grim.DefinirFeitico("Bola de Fogo");

		m.MostrarGrupo();
		m.Grim.Abrir();

    }
}