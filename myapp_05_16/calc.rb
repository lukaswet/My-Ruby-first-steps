print "Введите значение 1: "
value_1 = gets.to_i

print "Введите значение 2: "
value_2 = gets.to_i

print "Что бужем делать? (+ - * /) "
process = gets.strip

sum = 0

if value_2 == 0 && process == "/" 
	puts "На ноль делить нельзя"
	exit			
end

if process == "+"
	sum = value_1 + value_2	
end

if process == "-"
	sum = value_1 - value_2	
end

if process == "*"
	sum = value_1 * value_2	
end

if process == "/"
	sum = value_1 / value_2	
end

puts "Результат: #{sum}"

