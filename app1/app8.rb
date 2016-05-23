# encoding: cp866

print "Какую сумму будем откладывать в месяц: "
x = gets.to_f

print "Сколько месяцев будем откладывать: "
z = gets.to_i

s = 0

1.upto(z) do |mm|
	s = s + x
	puts "Накопления за #{mm} месяц #{s}"

end