class CoquetelAfterlife
    attr_reader :nome

    def initialize(nome,preco)
        @nome = nome
        @_preco = preco
    end

    def preco
        @_preco
    end

    def preco=(novo_valor)
        if novo_valor.is_a?(Numeric) && novo_valor >= 5 && novo_valor <= 200
            @_preco = novo_valor
        else
            puts "Preço inválido!"
        end
    end

    def ficha
        return "Nome: #{@nome} | Preço: R$#{@_preco}"
    end
end

class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda
    
    def initialize(nome,preco,lenda)
        super(nome,preco)
        @lenda = lenda
    end

    def ficha
        return super + " | Lenda homenageada: #{@lenda}"
    end
end

coqueteis = []
coqueteis << CoquetelAfterlife.new("Gin Tônica",100)
coqueteis << DrinkDeLenda.new("Dry Martini",150,"Michael Jackson")
coqueteis << DrinkDeLenda.new("Daiquiri",35,"Grinch")

coqueteis.each do |n|
    puts n.ficha
end

coqueteis[1].preco = 500
coqueteis[1].preco = 80
puts coqueteis[1].ficha

# HelloWorld.rb:48:in `<top (required)>': undefined method `nome=' for an instance of CoquetelAfterlife (NoMethodError)
# coqueteis[0].nome = "Cuba Libre"