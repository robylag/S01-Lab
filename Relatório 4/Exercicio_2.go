package main
import "fmt"

func main(){
	var venda_1 int
	var venda_2 int
	var venda_3 int

	fmt.Printf("Digite as vendas do 1° trimestre:\n")
	fmt.Scanln(&venda_1)

	fmt.Printf("Digite as vendas do 2° trimestre:\n")
	fmt.Scanln(&venda_2)

	fmt.Printf("Digite as vendas do 3° trimeste:\n")
	fmt.Scanln(&venda_3)

	var soma = venda_1 + venda_2 + venda_3

	fmt.Printf("Total de vendas: %d unidades\n", soma)

	if soma < 100 {
		fmt.Printf("Meta minima anual nao atingida!\n")
	} else {
		switch{
			case soma >= 250:
				fmt.Printf("Categoria Top Seller\n")
			case soma >= 180 && soma <= 249:
				fmt.Printf("Categoria Senior\n")
			case soma >= 100 && soma <= 179:
				fmt.Printf("Categoria Pleno\n")
		}
	}
}