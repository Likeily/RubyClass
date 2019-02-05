["laranja", "maça", "uva"].each do |fruta|
    puts fruta
    break if fruta == "maça"
end

["laranja", "maça", "uva"].each do |fruta|
    next if fruta == "maça"
    puts fruta
end

loop do 
    puts "Digite um número:"
    input = gets.to_i
    redo if input > 10
end

