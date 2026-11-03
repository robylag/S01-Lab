import java.util.*;

abstract class Morador{
  private String nome;

  public Morador(String nome){
    this.nome = nome;
  }

  public String getNome(){return this.nome;}

  public abstract void apresentar();
}

class Mago extends Morador{
  private String feitico;

  public Mago(String nome, String feitico){
    super(nome);
    this.feitico = feitico;
  }
  
  @Override
  public void apresentar(){
    System.out.println("\n > Olá!, eu me chamo o mago "+ getNome() +" meu feitiço é: "+this.feitico);
  }
}

class DemonioDoFogo extends Morador{
  public DemonioDoFogo(String nome){
    super(nome);
  }

  @Override
  public void apresentar(){
    System.out.println("\n > Oi!, eu me chamo "+ getNome() +" eu sou o responsável por fazer o castelo andar!");
  }
}

public class Main {
    public static void main(String[] args) {
      Morador mago_1 = new Mago("Patolino o Grandioso","Eletricidade");
      Morador demonio_1 = new DemonioDoFogo("Demoninho");

      mago_1.apresentar();
      demonio_1.apresentar();

      // Morador is abstract; cannot be instantiated
      // Morador morador = new Morador("Kleber");
    }
    
}