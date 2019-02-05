#coleção que mapeia chave e valor

hash = {}
puts hash
hash = {nome: "Likeily", idade: 32}
puts hash
hash[:nome]
hash[:idade]
hash[:rua]= 'rua João Alfredo'
puts hash
#Possui todos os métodos que o enumerable fornece
hash.each do |chave, valor|
    puts "#{chave} -> #{valor}"
end

hash[40] = "nome"
puts hash
#qualquer objeto pode ser a chave do hash

hash.map {|chave; valor| "#{valor}: #{chave}"}
