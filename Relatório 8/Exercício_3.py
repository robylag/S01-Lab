class Persona:
    def __init__(self, nome:str, arcano:str):
        self.nome = nome
        self.arcano = arcano
    
    def invocar(self):
        print(f"PERSONA - Nome: {self.nome} | Arcano: {self.arcano}")

class Aliado:
    def __init__(self, nome:str, codinome:str):
        self.nome = nome
        self.codinome = codinome

# Composição - A classe Lider cria sua própria Persona dentro de seus atributos, estabelecendo uma relação de dependencia com a classe Lider.
# Agregação - A classe Lider recebe objetos Aliado já existentes e os adiciona à equipe. Esses aliados podem existir tendo um lider ou não.
class Lider:
    def __init__(self, codinome:str):
        self.codinome = codinome
        self.persona = Persona("Arsène","Louco")
        self._equipe = []
    
    def recrutar(self,aliado:Aliado):
        self._equipe.append(aliado)
    
    def infiltrar(self,palacio):
        print(f"{self.codinome} irá realizar uma infiltração no palacio de {palacio}:")
        self.persona.invocar()
        print("Membros participando da infiltração:")
        for a in self._equipe:
            print(f" - {a.nome} | {a.codinome}")
        
        
if __name__ == "__main__":
    aliado_1 = Aliado("Morgana","Mona")
    aliado_2 = Aliado("Ann Takamaki","Panther")
    
    lider_1 = Lider("Joker")
    lider_1.recrutar(aliado_1)
    lider_1.recrutar(aliado_2)
    
    d_palacio = "Suguru Kamoshida"
    
    lider_1.infiltrar(d_palacio)
    


    
         