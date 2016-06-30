print "вы довольны своей зарплатой: (Y/N)"
answer = gets.strip.capitalize

puts "Идут сложные вычисления"

if answer == "Y"
	puts "Очент хорошо"
end

if answer == "N"
	puts "Очень плохо"	
end	