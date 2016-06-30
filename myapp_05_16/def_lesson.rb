@a = 1

def get_password
	@a = 2
	print "Type password: "
	gets.chomp
end

xx = get_password

puts "Был введен пароль: #{xx} "

puts "Переменна а = #{@a}"