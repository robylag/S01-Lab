#include<iostream>
#include<vector>
using namespace std;

class Hobbit{
    protected:
        string nome;
    public:
        Hobbit(string n){
            nome = n;
        }
        virtual void fazerAtividade(){
            cout << "O hobbit " << nome << " esta aproveitando um dia tranquilo  na Comarca"<<endl;
        }
};

class Jardineiro: public Hobbit {
    public:
        Jardineiro(string n):Hobbit(n){}
        void fazerAtividade() override{
            cout << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!"<<endl;
        }
};

class Cozinheiro: public Hobbit {
    public:
        Cozinheiro(string n):Hobbit(n){}
        void fazerAtividade() override{
            cout << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!"<<endl;
        }
};

class Fazendeiro: public Hobbit {
    public:
        Fazendeiro(string n):Hobbit(n){}
        void fazerAtividade() override{
            cout << "O fazendeiro " << nome << " esta colhendo vegetais e hortalicas em suas terras!"<<endl;
        }
};

int main(){
    vector<Hobbit*> seres;
    seres.push_back(new Jardineiro("Jose"));
    seres.push_back(new Cozinheiro("Carlos"));
    seres.push_back(new Fazendeiro("Michael"));

    for(int i=0; i<3; i++){
        seres[i]->fazerAtividade();
    }
}