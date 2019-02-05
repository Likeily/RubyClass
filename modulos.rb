module Compartilhado
    def imprime_texto
        puts "TEXTO!!!"
    end
end

#compartilha (comportamentos)métodos dentro de classes.

class Carro
    include Compartilhado
    def modelo_de_carro
        puts"Carro"
    end
end

c = Carro.new
c.imprime_texto

#É possível organizar em table spaces...
module Fabrica
    class Carro
        def modelo_de_carro
            puts "Carro da fabrica"
        end
    end
end

#Compartilhar códigos(métodos) dentro de classes.
novo_carro =Fabrica::Carro.new
novo_carro.modelo_de_carro
c.modelo_de_carro
