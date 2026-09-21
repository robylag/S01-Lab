#include<iostream>
using namespace std;

class LinkSocial{
    private:
        string nome;
        string arcana;
        int rank;
    public:
        void setLink(string n, string a, int r){
            nome = n;
            arcana = a;
            rank = r;
        }
        string getNome(){return nome;}
        string getArcana(){return arcana;}
        int getRank(){return rank;}
        void subirRank(){rank++;}
};

int main(){
    LinkSocial personagem;

    string nome_aux;
    string arc_aux;
    int rank_aux;

    getline(cin >> ws, nome_aux);
    getline(cin >> ws, arc_aux);
    cin >> rank_aux;

    personagem.setLink(nome_aux,arc_aux,rank_aux);

    personagem.subirRank();

    cout << "Dados do personagem: " << endl;
    cout << "Nome - " << personagem.getNome() << endl;
    cout << "Arcana - " << personagem.getArcana() << endl;
    cout << "Rank - " << personagem.getRank() << endl;

}