#metodos da classe array que são utilizados pelo enumerable

lista = [1,6,5,2,4]
puts lista
lista.each{ |i| puts i}
puts lista
lista.sort  #ordena os numeros de menor para maior
puts lista
lista.reduce(0){|resultado, proximo_valor| resultado + proximo_valor}
puts lista

lista.map{|numero| numero * numero} #transforma o array em outro array aplicando uma função
puts lista