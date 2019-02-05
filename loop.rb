
#freio_acionado = true

#while freio_acionado
#    puts "Manter parado" 
#    freio_acionado = false
#end


#puts "Manter parado" while freio_acionado

#while freio_acionado do puts "Manter parado" end

#until freio_acionado do puts "Manter parado" end

#begin
#    verificar_abs
#    executar_parada
#end while freio_acionado?

for i in [10, 20, 30]
    puts i
end

#for i in 1 ..10
#    puts i
#end


#######################################PARTE 2

["laranja", "maça", "uva"].each do |fruta, verdura|
    puts fruta
end

["laranja", "maça", "uva"].each {|fruta| puts fruta}

10.upto(20) {|i| puts i}

#Loop infinito usar break

loop do 
    puts "loop infinito"
    break
end
