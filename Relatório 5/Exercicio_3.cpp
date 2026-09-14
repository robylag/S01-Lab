#include<iostream>
#include<iomanip>
using namespace std;

int main(){
    float carga_max;
    float carga_atual = 0.0;
    float aux;
    int op;
    bool active_menu = true;

    cout << fixed << setprecision(2);
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> carga_max;
    
    while(active_menu){
        cout << "=== SISTEMA DE CARGA DO DRONE ===\n";
        cout << "1. Verificar Carga\n";
        cout << "2. Carregar Pacote\n";
        cout << "3. Descarregar Pacote\n";
        cout << "4. Encerrar Operacao\n";
        cout << "Escolha uma opcao: ";
        cin >> op;

        switch(op){
            case 1:
                cout << "Carga Atual: "<<carga_atual<<" kg / "<<carga_max<<" kg\n";
                cout << "Espaco Disponivel: "<<carga_max-carga_atual<<" kg\n";
                break;
            case 2:
                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> aux;
                if(aux + carga_atual > carga_max){
                    cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada.\n";
                }
                else{
                    carga_atual += aux;
                    cout << "Pacote adicionado com sucesso!\n";
                }
                break;
            case 3:
                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> aux;
                if(carga_atual-aux < 0){
                    cout << "Alerta: Nao e possivel remover mais alem do que existe atualmente! Operacao cancelada.\n";
                }
                else{
                    carga_atual-=aux;
                    cout << "Pacote descarregado com sucesso!\n";
                }
                break;
            case 4:
                cout << "Encerrando sistema de telemetria...\n";
                active_menu = false;
                break;
        }
    }
}  