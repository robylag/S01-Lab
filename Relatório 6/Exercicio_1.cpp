#include<iostream>
using namespace std;

class Banda{
    private:
        string nome;
        int integrantes;
        float potenciaSom;
        int energia;
    public:
        Banda(string n, int i, float p, int e){
            nome = n;
            integrantes = i;
            potenciaSom = p;
            energia = e;
        }
        void duelar(Banda &rival){
            cout << "A banda " << rival.nome << " esta confirmada para duelar com a banda "<< rival << endl;
            rival.energia -= potenciaSom;
        }
        void exibir(){
            cout << "Status da banda: " << nome << endl;
            cout << "Integrantes - " << integrantes << endl;
            cout << "Potencia - " << potenciaSom << endl;
            cout << "Energia - " << energia << endl << endl;
        }
};

int main(){
    Banda b1("Os bando loco",4,100.0,50);
    Banda b2("So solo de guitarra",3,80.0,40);

    b1.duelar(b2);

    cout << endl << "Confronto realizado!"<< endl << endl;
    b1.exibir();
    b2.exibir();
}