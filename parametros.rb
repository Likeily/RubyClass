#parametros default

def produzir(tamanho = :m, cor = :azul, quantidade)
    puts "Produzindo roupas do tamanho #{tamanho}, cor #{cor}, e quantidade #{quantidade}"
    end
produzir(10)

produzir(:g, :preto, 20) #passar apenas parametros

#quantidade de parametros variados, exemplo:

def imprimir_nome(*nomes) #splat operator, transforma argumentos em array
    nomes.each{|n| puts n}
end

puts imprimir_nome 'Likeily', "Guilherme", 'Angelina'
 #o mesmo metodo com parametros definidos:
 def imprimir_nome(idade, *nomes) #splat operator, transforma argumentos em array
    nomes.each{|n| puts n}
    puts "Idade: #{idade}"
end

puts imprimir_nome 32, "Likeily", "Guilherme", "Angelina"

#metodos com argumentos usando palavras chaves:

def producao (quantidade, tamanho: :M, cor: :azul) #não precisa obdecer a ordem de tamanho e cor, pq tem chave e valor
    puts "Produzindo #{quantidade} de roupas tamanho #{tamanho} e cor #{cor}"
end
#Os parametros obrigatorios que não utiliza chave e valor tem que vir no começo do metodo.
producao(5)
producao(10, tamanho: :G, cor: :amarelo)
