#lambdas é uma função anônima
#Exemplo:

lamb = lambda{puts "sou uma lambda"}
lamb.class

#putra forma de chamar uma lambda em seguida como proc
lamb = -> (){ puts"Sou uma lambda"}
lamb.call
#comparando com proc , Proc:
proc = Proc.new{ |nome| puts"Meu nome é #{nome}" }

#Declarando uma Lambda:
lamb= -> (nome) {puts "Meu nome é #{nome}"}
#A quantidade de parametros é importante na comparação
#pois uma lambda precisa dos parametros e a 
#proc só aceita a quantidade declaração, ignorando parametros a +

def meu_metodo
    -> (){return "return detro da lambda"}.call
    return "return do meu_metodo"
    end
meu_metodo

def meu_metodo
    Proc.new{ return "return dentro da Proc"}.call
    return "return do meu_metodo"
    end
    meu_metodo