package main
import "fmt"

func gerarEscalaPlantao(n int){
	var dia int
	var i int
	dia = 1
	i = 1
	fmt.Printf("--- Escala de Plantao Tecnico ---\n")
	for i <= n {
		fmt.Printf("Plantao %d: Dia %d do mes\n",i,dia)
		dia+=4
		i++
	}
}

func main() {
	var n int

	fmt.Printf("Digite a quantidade de plantoes necessarios: \n")
	fmt.Scanln(&n)

	gerarEscalaPlantao(n)
}