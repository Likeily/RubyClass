class Automovel

    def self.tipo_cambio
        puts "Manual"
    end

    def acelera
        verifica_combustivel
    puts "Acelarando automóvel..."
    end

    private 
      def verifica_combustivel
        puts "Verificando combustível"
      end
end

class Carro < Automovel
    def acelera
        puts "Verificando equipamentos..."
        super
    end

    def freia
        puts "parando..."
    end
end


#Visibilidade de metodos: 
#todos os metodos são public por default
#Exemplo de metodo privado
#private 
# verifica_combustivel
#end

Carro.tipo_cambio
carro = Carro.new
carro.acelera
carro.freia

auto = Automovel.new
auto.acelera