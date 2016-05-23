whatnumber = rand(0..100)

time_att = 10

1.upto(time_att) do |attempt|

	print "Я загадав число. Вгадай яке? Спроба: #{attempt}. Осталось #{time_att - attempt} попыток. "

	answer = gets.to_i

	if answer == whatnumber
		puts "Вгадав"
		exit
	elsif answer > whatnumber
		puts "Нет. Ваше число больше."		
	elsif answer < whatnumber
		puts "Нет. Ваше число меньше."		
	end

end	