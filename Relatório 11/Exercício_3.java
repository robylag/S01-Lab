import java.util.*;

interface Sobrenatural{
    void manifestar();
}

class Alienigena implements Sobrenatural{
    private String nome;

    public Alienigena(String nome){
        this.nome = nome;
    }

    @Override
    public void manifestar(){
        System.out.println("\n > O alien "+ this.nome +" acabou de surgir diante de uma nave espacial!");
    }
}

class EspiritoYoukai implements Sobrenatural{
    private String nome;

    public EspiritoYoukai(String nome){
        this.nome = nome;
    }

    @Override
    public void manifestar(){
        System.out.println("\n > O Youkai "+ this.nome +" acabou de surgir diante de um fenomeno!");
    }
}

class MapaDeAvistamentos{
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos(){
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser){
        this.avistamentos.put(local,ser);
    }

    public void investigar(String local){
        Sobrenatural res = this.avistamentos.get(local);

        if(res == null){
            System.out.println("\n > O local "+local+" está tranquilo!");
        }
        else{
            res.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {
      Alienigena alien = new Alienigena("ET Bilu");
      EspiritoYoukai youkai = new EspiritoYoukai("Whisper");

      MapaDeAvistamentos avs = new MapaDeAvistamentos();
      avs.registrar("Tokyo",alien);
      avs.registrar("Quioto",youkai);
      avs.investigar("Tokyo");
      avs.investigar("Quioto");
      avs.investigar("Osaka");
    }
}