hash = {'cat' => ['catty','cat'], 'dog' => ['puppy', 'doggy'], 'girl' => ['baby']}

hash.each_value do |value|
		puts "Каждое значение: #{value}"
end	

# кирилиця у value не відображається в cmd на windows 