#Uma classe que retorna um intervalo

intervalo = 1..5
intervalo.class
puts intervalo
intervalo.include? 6  #verifica se o numero está no range
intervalo.each{|i| puts i }  #metodo do módulo enumerable
intervalo.map {|i|  i * i } 
#também é utilizado em clausulas case
puts "Qual o seu número de entrada? "
entrada = gets.to_i
case entrada
when 1..49 then puts("entre 1 e 49")
when  50..100 then puts("entre 50 e 100")
else puts "número maior de 100 não é válido!"
end
puts "Seu número foi: " + entrada.to_s
