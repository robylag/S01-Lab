# Classe Principal
class MortoVivo:
    def __init__(self, nome:str, almas:int, estus:int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus
        
    def set_estus(self, quantidade):
        if quantidade < 0 or quantidade > 10:
            print("Quantidade de Estus inválida!")
        else: 
            self.__estus = quantidade
            
    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

# Classe Filha  
class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus,milagre:str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre
        
    def mostrar_status(self):
        return super().mostrar_status() + f" | Milagre: {self.milagre}"

if __name__ == "__main__":
    cle = Clerigo("Patolino o Grandioso",6,8,"Sobre o olhar do necromante")
    print(cle.mostrar_status())
    cle.set_estus(15)
    cle.set_estus(10)
    print(cle.mostrar_status())
    
    # AttributeError: 'Clerigo' object has no attribute '__estus'. Did you mean: 'get_estus'?
    # print(cle.__estus)