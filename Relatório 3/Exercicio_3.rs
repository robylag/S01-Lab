use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32){
    for i in limite_inferior..=limite_superior{
        if i % 10 == digito{
            println!("{}",i);
        }
    }
}

fn main(){
    let mut entrada = String::new();
    let dig:i32;
    let lim_inf:i32;
    let lim_sup:i32;

    println!("Digite o digito final desejado (0 a 9):");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    dig = entrada.trim().parse().unwrap_or(0);
    entrada.clear();
    
    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    lim_inf = entrada.trim().parse().unwrap_or(0);
    entrada.clear();

    println!("Digite o limite superior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    lim_sup = entrada.trim().parse().unwrap_or(0);

    println!("Numeros no intervalo terminados em {}:",dig);

    imprimir_terminados_em(dig,lim_inf,lim_sup);
}