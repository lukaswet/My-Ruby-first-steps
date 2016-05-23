print "Сколько раз будем играть: "
t = gets.to_i

print "Какое ваше любимое число? "
f = gets.to_i

1.upto(t) do |tt|

	puts "Играем #{tt} раз"

	x = rand(1..50)

		if x == f

				puts "Поздравляю. Вы выиграли."
			
		end

end		