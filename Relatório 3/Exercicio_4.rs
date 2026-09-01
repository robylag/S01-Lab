use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64{
    let npt:f64 = (prova1 + prova2)/2.0;
    let pf:f64 = npt*0.6 + redacao*0.4;
    return pf;
}

fn main(){
    let mut entrada = String::new();
    let p1:f64;
    let p2:f64;
    let r:f64;

    println!("Digite a nota da Prova Teorica 1:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    p1 = entrada.trim().parse().unwrap_or(0.0);
    entrada.clear();
    
    println!("Digite a nota da Prova Teorica 2:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    p2 = entrada.trim().parse().unwrap_or(0.0);
    entrada.clear();

    println!("Digite a nota da Redacao: ");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    r = entrada.trim().parse().unwrap_or(0.0);

    let calc:f64 = calcular_pontuacao(p1,p2,r);

    if calc >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    }
    else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }
    println!("Pontuacao final: {}",calc);
}