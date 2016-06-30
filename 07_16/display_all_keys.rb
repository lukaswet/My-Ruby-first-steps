hash = {'cat' => ['кошка','кот'], 'dog' => ['собака', 'пес'], 'girl' => ['девушка']}

hash.each_key do |key|
		puts "Каждый ключ: #{key}"
end

# Показати кількість value можна таким чином:	

x = 0

hash.each_value do |value|
		x = x + value.size
end	

puts "Количество value: #{x}"

