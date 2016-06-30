hh = {'cat' => ['кошка', 'кот'], 'dog' => ['собака', 'пес'], 'girl' => ['девушка']}

loop do

		print 'Введите слово: '
		word = gets.strip

		translation = hh[word]
		puts "Переводы слова: "
		puts translation

		print "Количество переводов #{translation.size}" 
		puts
		# замість size міг бути lenght
		
end	