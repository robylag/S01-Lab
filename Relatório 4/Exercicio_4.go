package main
import "fmt"

func validarIngresso(setor string, codigo int) bool{
	if setor == "VIP" && codigo == 2026{
		return true
	} else {
		return false
	}
}

func main() {
	var setor string
	var codigo int

	for {
		fmt.Printf("Digite o setor do ingresso:\n")
		fmt.Scanln(&setor)

		fmt.Printf("Digite o codigo do ingresso:\n")
		fmt.Scanln(&codigo)

		var res bool
		res = validarIngresso(setor,codigo)
		if res {
			fmt.Printf("Acesso liberado a area VIP!\n")
			break
		} else {
			fmt.Printf("Ingresso ou seotr invalido. Tente novamente.\n")
		}
	}
}