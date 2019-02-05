#Blocos são pedaços de códigos que podem executar a qualquer momento.
#podem receber parametros e tem flexibilidade maior.

require 'net/http'
require 'json'

def listar_usuarios
    uri = URI('http://jsonplaceholder.typicode.com/users')
    response = Net::HTTP.get(uri)
    yield JSON.parse(response) if block_given?
    puts "Finalizando listagem de usuarios"
end

listar_usuarios do |usuarios|
    puts"Total de usuarios: #{usuarios.size}"
end

listar_usuarios do |usuarios|
    usuarios.each do |usuario|
        puts "Nome: #{usuario["name"]}"
    end
end


#Block e Proc: Diferenças
#não pode passar mais de 1 bloco por metodo
#não pode passar bloco de um metodo pro outro

#Proc podem ser instaciar Procs que funcionam como blocos
require 'net/http'
require 'json'

def listar_usuarios(quantidade, my_proc)
    uri = URI('http://jsonplaceholder.typicode.com/users')
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    my_proc.call(quantidade)
    yield JSON.parse(response) if block_given?
    puts "Finalizando listagem de usuarios"
end

debug = Proc.new {|variavel| puts "Debugando Variavel #{variavel}"}

listar_usuarios 10, debug do |usuarios|
    puts "Total de usuarios: #{usuarios.size}"
end

listar_usuarios 10, debug