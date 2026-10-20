class Phonewave
    def enviar_email(mensagem)
        puts "A mensagem '#{mensagem}' foi enviada para o passado!"
    end
end

class MembroDoLab
    attr_reader :numero, :nome

    def initialize(numero,nome)
        @numero = numero
        @nome = nome
    end
end

class LaboratorioDeGadgets
    def initialize
        # Composição - Na classe LaboratorioDeGadgets um novo objeto é criado e vinculado
        # a classe principal, este objeto é totalmente dependente dela
        @phonewave = Phonewave.new

        # Agregação - Na classe LaboratorioDeGadgets, novos objetos podem ser adicionados
        # a classe, mas sao totalmente independente se o objeto Laboratorio existir ou não
        @membros = []
    end

    def admitir(membro)
        @membros << membro
        puts "Admitido -> #{membro.nome} | Num: #{membro.numero}"
    end

    def experimento(mensagem)
        @membros.each do |n|
            puts "| Nome: #{n.nome} | Num: #{n.numero} |"
        end
        @phonewave.enviar_email(mensagem)
    end
end

m1 = MembroDoLab.new("4002-8922","Rodolfo")
m2 = MembroDoLab.new("4003-4343","Jessica")

lab = LaboratorioDeGadgets.new
lab.admitir(m1)
lab.admitir(m2)
lab.experimento("Noticias Urgentes!")