hh = {'cat' => 'кошка', 'dog' => 'собака', 'girl' => 'собака'}

loop do 

		print 'Введи слово: '
		word = gets.strip

		translation = hh[word]
		print "Переклад слова: #{translation}"
		puts
end	