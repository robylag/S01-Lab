import java.util.*;

class ItemDoCardapio{
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco){
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome(){return this.nome;}
    public double getPreco(){return this.preco;}

    public double precoFinal(){
        return getPreco();
    }
}

class ComboLeblanc extends ItemDoCardapio{
    public ComboLeblanc(String nome, double preco){
        super(nome,preco);
    }

    @Override
    public double precoFinal(){
        return getPreco()*0.9;
    }
}

class CafeLeblanc{
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc(){
        this.cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item){
        this.cardapio.add(item);
    }

    public void mostrarCardapio(){
        for(ItemDoCardapio item:this.cardapio){
            System.out.println("\n > "+item.getNome()+": "+item.precoFinal());
        }
    }
}

public class Main {
    public static void main(String[] args) {
      ItemDoCardapio item_1 = new ItemDoCardapio("Espaguete",29.90);
      ItemDoCardapio item_2 = new ItemDoCardapio("Lasanha",30.90);
      ItemDoCardapio item_3 = new ComboLeblanc("Combo Completo",99.90);

      CafeLeblanc cafe = new CafeLeblanc();
      cafe.adicionar(item_1);
      cafe.adicionar(item_2);
      cafe.adicionar(item_3);
      cafe.mostrarCardapio();
    }
}