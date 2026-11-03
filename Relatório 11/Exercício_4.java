import java.util.*;

abstract class Monstro{
    private String nome;

    public Monstro(String nome){
        this.nome = nome;
    }

    public String getNome(){return this.nome;}

    public abstract String receita();
}

class Slime extends Monstro{
    public Slime(String nome){
        super(nome);
    }

    @Override
    public String receita(){
        return "Ferva até que gosmura se liquidifica e acrescenta tempero por cima e mistura";
    }
}

class Mandragora extends Monstro{
    public Mandragora(String nome){
        super(nome);
    }

    @Override
    public String receita(){
        return "Primeiro de tudo, silencie ela! e depois a cozinhe e acrescenta diante de um frango";
    }
}

class Panela{
    private String material;

    public Panela(String material){
        this.material = material;
    }

    public String getMaterial(){
        return this.material;
    }
}

class Cozinheiro{
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela){
        this.nome = nome;
        // Composição, a panela é um objeto que faz parte do Cozinheiro e sendo dependente a ela
        // só existindo diante da existencia do Cozinheiro
        this.panela = new Panela(materialDaPanela);

        // Agregação, os ingrediente podem fazer parte do cozinheiro, mas não necessariamente
        // dependentes a ele, podendo existir com ou sem o cozinheiro.
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro){
        this.ingredientes.add(monstro);
    }

    public void servirBanquete(){
        System.out.println("\n > Cozinheiro(a): "+this.nome);
        System.out.println(" > Material da panela utilizada: "+this.panela.getMaterial());
        
        for(Monstro m:this.ingredientes){
            System.out.println("\n   * Monstro: "+m.getNome());
            System.out.println("   "+m.receita());
        }
    }
}

public class Main {
    public static void main(String[] args) {
      Monstro m1 = new Slime("Slimento");
      Monstro m2 = new Mandragora("O berrante");
      Cozinheiro cozinheiro = new Cozinheiro("Jeff","Aluminio");
      cozinheiro.adicionarIngrediente(m1);
      cozinheiro.adicionarIngrediente(m2);
      cozinheiro.servirBanquete();
    }
}