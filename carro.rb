class Carro

   #attr_reader apenas leitura
   #attr_writer apenas escrita
    attr_accessor :marca, :modelo

    def velocidade_maxima
        250
    end

    #def descrição
    #"Marca: #{@marca} e Modelo: #{@modelo}"   <-- interpolação de atributos virtuais
    #end
end

carro = Carro.new
carro.marca = "Ford"
carro.modelo = "Focus"
puts "Marca" + carro.marca
puts "Modelo" + carro.modelo
#puts "Velocidade Máxima" + carro.velocidade_maxima
