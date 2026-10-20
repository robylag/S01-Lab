module Depoente
    def depor
        raise NotImplementedError, "#{self.class} deve haver uma categorização!"
    end
end

module Detivel
    def ser_detido
        puts "#{@nome} foi levada pela Scotland Yard"
    end
end

class Envolvido
    attr_reader :nome
    
    def initialize(nome)
        @nome = nome
    end
end

class TestemunhaOcular < Envolvido
    include Depoente

    def depor
        puts "#{@nome} testemunhou um crime a ser ocorrido!"
    end
end

class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel

    def depor
        puts "#{@nome} tem um álibi em fazer as coisas discretamente"
    end
end

class Investigacao
    attr_reader :caso

    def initialize(caso)
        @caso = caso
        @envolvidos = []
    end

    def registrar(envolvido)
        @envolvidos << envolvido
    end

    def ouvir_todos
        puts "| CASO: #{@caso} |"
        @envolvidos.each do |n|
            n.depor
        end
    end

    def acionar_scotland_yard
        culpados = @envolvidos.select { |n| n.respond_to?(:ser_detido)}

        culpados.each do |n|
            n.ser_detido
        end
    end
end


tes_1 = TestemunhaOcular.new("Albert")
tes_2 = SuspeitoDoCrime.new("Jeffrey")
tes_3 = SuspeitoDoCrime.new("Michael")

inv = Investigacao.new("O assasinato de Mariah")
inv.registrar(tes_1)
inv.registrar(tes_2)
inv.registrar(tes_3)

inv.ouvir_todos

inv.acionar_scotland_yard