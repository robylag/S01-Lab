#include<iostream>
using namespace std;

class MembroInatel{
    protected:
        string nome;
    public:
        MembroInatel(string n){
            nome = n;
        }
        virtual void seApresentar(){
            cout << "Sou um  membro da comunidade Inatel: " << nome;
        }
};

class Aluno : public MembroInatel{
    private:
        string curso;
    public:
        Aluno(string n, string c):MembroInatel(n){
            curso = c;
        }
        void seApresentar() override {
            cout << "Meu nome e " << nome << " e estudo no curso de " << curso << endl;
        }
};

class Professor : public MembroInatel{
    private:
        string disciplina;
    public:
        Professor(string n, string d):MembroInatel(n){
            disciplina = d;
        }
        void seApresentar() override {
            cout << "Meu nome e " << nome << " e leciono  a disciplina de " << disciplina << endl;
        }
};

int main(){
    Professor p("Rhuan Patrick","Paradigmas");
    Aluno a("Diego Silva", "Engenharia de Software");

    a.seApresentar();
    p.seApresentar();
}