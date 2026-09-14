#include<iostream>
using namespace std;

int main(){
    int matriz_solar[5][5];
    for(int i=0; i<5; i++){
        for(int j=0; j<5; j++){
            matriz_solar[i][j] = 0;
        }
    }

    bool cond_menu = true;
    int op;
    int aux_i, aux_j;
    while(cond_menu){
        cout << "\n=== TELEMETRIA DO PAINEL SOLAR ===\n";
        cout << "1. Ativar Celula\n";
        cout << "2. Ver Mapa da Matriz\n";
        cout << "3. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> op;

        switch(op){
            case 1:
                cout << "Digite a fileira (0-4): ";
                cin >> aux_i;
                cout << "Digite a coluna (0-4): ";
                cin >> aux_j;

                if(matriz_solar[aux_i][aux_j] == 0){
                    matriz_solar[aux_i][aux_j] = 1;
                    cout << "Sucesso: Celula solar ativada!\n";
                }
                else{
                    cout << "Erro: Celula solar ja esta em operacao!\n";
                }
                break;
            case 2:
                cout << "--- Mapa da Matriz Solar ---\n";
                for(int i=0; i<5; i++){
                    for(int j=0; j<5; j++){
                        cout << "["<<matriz_solar[i][j]<<"] ";
                    }
                    cout<<"\n";
                }
                break;
            case 3:
                cond_menu = false;
                break;
        }
    }
    float ativo = 0;
    float inativo = 0;
    for(int i=0; i<5; i++){
        for(int j=0; j<5; j++){
            if(matriz_solar[i][j] == 1) ativo++;
            else inativo++;
        }
    }
    float calc = (ativo/inativo)*100;
    cout << "=== RELATORIO FINAL DE OPERACAO ===\n";
    cout << "Total de celulas ATIVAS: " << ativo << "\n";
    cout << "Total de celulas INATIVAS: " << inativo << "\n";
    cout << "Capacidade Operacional: " << calc << "%\n";
}