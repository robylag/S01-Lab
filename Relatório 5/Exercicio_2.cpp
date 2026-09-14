#include<iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    float res = 1;
    for(int i=0; i<tamanho; i++){
        res*= probabilidades[i];
    }
    return res;
}

int main(){
    int n;
    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> n;
    float prob[n];
    for(int i=0; i<n; i++){
        cout << "Digite a probabilidade do componente "<<i+1<<"(ex:0.95): ";
        cin >> prob[i];
    }
    float res = calcular_confiabilidade_sistema(prob,n);
    cout << "Confiabilidade total do sistema: " << res << " ("<<res*100<<"%)";
}  