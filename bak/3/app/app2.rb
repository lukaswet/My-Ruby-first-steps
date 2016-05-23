#encoding: cp866
print "Введите ваше имя: "    #Перший вар?ант
name = gets.chomp
name.strip!
name.capitalize!
puts "Здравствуйте, #{name}"
puts "В вашем имени #{name.length} букв"

puts ""

print "Введите ваше имя: "    #Другий вар?ант
name = gets.strip.capitalize
puts "Вас зовут:\t\t #{name}"
puts "Букв в вашем имени:\t #{name.length}"
