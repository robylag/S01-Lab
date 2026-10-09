using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class EntidadeCosmica
{
    public string Nome { get; private set; }
    public string Origem { get; private set; } = "Desconhecida";
	public EntidadeCosmica(string nome)
	{
		this.Nome = nome;
	}
    public void DefinirOrigem(string origem)
    {
        this.Origem = origem;
    }
    public virtual void Manifestar()
    {
        Console.WriteLine($"-> Entidade: {Nome}");
        if(Origem != "Desconhecida")
        {
            Console.WriteLine($"   Origem: {Origem}");
        }    
    }
}

public class Profundo : EntidadeCosmica
{
	public Profundo (string nome) : base(nome) {}
    public override void Manifestar()
    {
        Console.WriteLine($"-> Das profundezas do oceano, {Nome} emerge!");
    }
}

public class MiGo : EntidadeCosmica
{
	public MiGo (string nome) : base(nome) {}
    public override void Manifestar()
    {
        base.Manifestar();
        Console.Write("   Que os Fungos de Yuggoth emergem!");
    }
}

public class Pesquisador
{
    public string Nome { get; private set; }
    private List<EntidadeCosmica> EntC;
    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this.EntC = new List<EntidadeCosmica>();
    }
    public void Catalogar(EntidadeCosmica e)
    {
        EntC.Add(e);
    }
    public void LerCatalogo()
    {
        foreach(var e in EntC)
        {
            e.Manifestar();
        }
    }
}
public class Program
{
	public static void Main(string[] args)
	{
		EntidadeCosmica E1 = new EntidadeCosmica("Azathoth");
        EntidadeCosmica E2 = new Profundo("Profundo");
        EntidadeCosmica E3 = new MiGo("Mi-Go");
        E3.DefinirOrigem("Yuggoth");

        Pesquisador P = new Pesquisador("Robert McClovin");
        P.Catalogar(E1);
        P.Catalogar(E2);
        P.Catalogar(E3);

        P.LerCatalogo();
	}
}
