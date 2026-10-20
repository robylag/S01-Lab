from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass
        
class Cyberdeck:
    def __init__(self, modelo:str):
        self.modelo = modelo
    
class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self,nome:str,modelo:str):
        self.nome = nome
        self.modelo = Cyberdeck(modelo)
        
    def executar_invasao(self):
        print(f"| Netrunner: {self.nome} |")
        print(f"| Modelo: {self.modelo.modelo} |")
        print(f"| Quebrando o gelo (ICE) de um servidor |")
        
class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo:int):
        self.codigo = codigo
    
    def executar_invasao(self):
        print(f"| Código: {self.codigo} |")
        print(f"| Interceptando o sinal da rede |")

class CelulaHacker:
    def __init__(self, nome:str, membros:list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros      
        
    def iniciar_ataque(self):
        print(f"| Nome: {self.nome} |")
        print(f"| Executando ataque. . . |") 
        for i in self.membros:
            i.executar_invasao()

if __name__ == "__main__":
    netrunner_1 = OperadorNetrunner("Rache Bartmoss","Cyber")
    drone_1 = DroneDeVigilancia(855)
    hacker = CelulaHacker("Cicada 3301",[netrunner_1,drone_1])
    hacker.iniciar_ataque()
    
    # TypeError: Can't instantiate abstract class IUnidadeDeRede with abstract method executar_invasao
    # teste = IUnidadeDeRede()