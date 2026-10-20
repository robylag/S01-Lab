class Instrumentista
    attr_reader :nome, :instrumento

    def initialize(nome,instrumento)
        @nome = nome
        @instrumento = instrumento
    end

    def interpretar(peca)
        raise NotImplementedError, "#{self.class} deve fazer parte de alguma categoria"
    end
end

class Solista < Instrumentista
    def interpretar(peca)
        puts "Nome: #{@nome} | Instrumento: #{@instrumento} | Peça: #{peca} | #{@nome} irá conduzir a melodia principal"
    end
end

class Acompanhador < Instrumentista
    def interpretar(peca)
        puts "Nome: #{@nome} | Instrumento: #{@instrumento} | Peça: #{peca} | #{@nome} irá acompanhar o ritmo do solista"
    end
end

class Regente
    attr_reader :nome, :orquestra

    def initialize(nome)
        @nome = nome
        @orquestra = []
    end

    def convocar(instrumentista)
        @orquestra << instrumentista
    end

    def reger(peca)
        puts "Regente: #{@nome} | Peça: #{peca}"
        @orquestra.each do |n|
            n.interpretar(peca)
        end
    end

    def escalacao
        return @orquestra.map{|n| "#{n.class} -> #{n.nome}"}
    end
end

sol = Solista.new("Roberto","Violino")
aco = Acompanhador.new("José","Violão")
regente = Regente.new("Billie")

regente.convocar(sol)
regente.convocar(aco)

regente.reger("Rei Leão")

regente.escalacao.each do |n|
    puts n
end

# HelloWorld.rb:10:in `interpretar': Instrumentista deve fazer parte de alguma categoria (NotImplementedError)
# inter = Instrumentista.new("Fábio","Tambor")
# inter.interpretar("Rei Leão")