print "Сколько вам лет? "
age = gets.to_i

print "Хотите поиграть?  Y/N:  "
playgame = gets.strip.capitalize

if age >= 18 && playgame == "Y"
	puts "Добре, зіграємо"
		# else puts "Ти ще просто маленький"

			money = 100

			1000.times do 

				puts "Нажмите Enter для начала игры"

				gets

				x = rand(0..9)
				y = rand(0..9)
				z = rand(0..9)

				# 000

				if x == 0 && y == 0 && z == 0
					puts "Ваш баланс обнулен"
					money = 0
				else 
					money = money - 5
				end	

				# 111

				if x == 1 && y == 1 && z == 1
					puts "Вам начислено 10 долларов"
					money = money + 10
				end

				# 112

				if x == 2 && y == 2 && z == 2
					puts "Вам начислено 20 долларов"
					money = money + 20
				end

				# 113

				if x == 3 && y == 3 && z == 3
					puts "Вам начислено 30 долларов"
					money = money + 30
				end

				# 114

				if x == 4 && y == 4 && z == 4
					puts "Вам начислено 40 долларов"
					money = money + 40
				end

				# 115

				if x == 5 && y == 5 && z == 5
					puts "Вам начислено 50 долларов"
					money = money + 50
				end

				# 116

				if x == 6 && y == 6 && z == 6
					puts "Сумма уменьшена вдвое"
					money = money / 2
				end

				# 117

				if x == 7 && y == 7 && z == 7
					puts "У вас снято 70 долларов"
					money = money - 70
				end

				# 118

				if x == 8 && y == 8 && z == 8
					puts "У вас снято 80 долларов"
					money = money - 80
				end

				# 119

				if x == 9 && y == 9 && z == 9
					puts "У вас снято 90 долларов"
					money = money - 90
				end

				if x == 1 && y == 2 && z == 3
					puts "У вас снято 123 доллара"
					money = money - 123
				end
					
				puts "#{x}#{y}#{z}"
				puts "На вашем счету: #{money} долларов!"

		end
end
