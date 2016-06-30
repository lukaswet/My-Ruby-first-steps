hash = {'cat' => ['кошка','кот'], 'dog' => ['собака', 'пес'], 'girl' => ['девушка']}

if hash.has_key? 'cat'
		puts "Есть кот"
end	

if hash['cat']
 		puts "Опять есть кот"
end 
