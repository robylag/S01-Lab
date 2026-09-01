use std::io;

fn validar_placa(placa: &str) -> bool {
    if placa.len() < 7{
        return false;
    } 
    let mut count_up = 0;
    let mut count_num = 0;
    for c in placa.chars(){
        if c.is_ascii_uppercase(){
            count_up = count_up + 1;
        }
        if c.is_numeric() {
            count_num = count_num + 1;
        } 
    }
    if count_up < 4 {
        return false;
    }
    if count_num < 2 {
        return false;
    }
    return true;
}

fn main(){
    let mut placa = String::new();
    loop {
        println!("Digite a placa:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");
        if validar_placa(&placa) {
            break;
        }
        println!("Placa invalida. Tente novamente!");
        placa.clear();
    };
    println!("Placa cadastrada no sistema!");
}