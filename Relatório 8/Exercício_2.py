class HeroiOverwatch:
    def __init__(self, codinome:str, funcao:str):
        self.codinome = codinome
        self.funcao = funcao
    
    def usar_suprema(self):
        print(f"{self.codinome} acabou de utilizar sua suprema! ! !")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} acabou de usar sua suprema de proteção! ! !")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} acabou de usar sua suprema de suporte! ! !")
        
    def curar_equipe(self):
        print("- Alguem aqui chamou um médico?")
        print(f"{self.codinome} acabou de curar toda a equipe!")

if __name__ == "__main__":
    herois = [
        HeroiOverwatch("Ashe","DPS"),
        HeroiTanque("Zarya","Tanque"),
        HeroiSuporte("Mercy","Suporte")
    ]
    
    for h in herois:
        h.usar_suprema()
        
        if isinstance(h,HeroiSuporte):
            h.curar_equipe()
    