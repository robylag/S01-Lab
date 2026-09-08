package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string){
	if len(codigo) == 10 {
		return true,"Codigo de rastreio registrado no sistema! \n"
	} else{
		return false,"Erro: O código de rastreio deve terexatamente 10 caracteres. \n"
	}
}

func main() {
	var codigo string
	for{
		fmt.Printf("Digite o codigo de rastreio: \n")
		fmt.Scanln(&codigo)

		res, res_c := ValidarCodigoRastreio(codigo)
		if res {
			fmt.Printf(res_c)
			break
		} else{
			fmt.Printf(res_c)
		}
	}
}