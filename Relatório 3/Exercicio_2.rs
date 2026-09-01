use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool{
    let mut calc = palpite - numero_secreto;
    if calc < 0 {
        calc = calc * -1;
    }
    if calc <= 5 {
        return true;
    }
    return false;

}

fn main(){
    let numero_secreto: i32 = 13;
    let mut palpite:i32;
    loop {
        let mut entrada = String::new();
        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        palpite = entrada.trim().parse().unwrap_or(0);
        if acertou_o_alvo(palpite,numero_secreto) {
            break;
        }
        println!("Voce passou longe! Tente novamente.");
    };
    let mut calc = palpite - numero_secreto;
    if calc < 0 {
        calc = calc * -1;
    }
    println!("Voce acertou! Ficou a apenas {} unidades do numero secreto ({})",calc,numero_secreto);
}