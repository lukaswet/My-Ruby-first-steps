fav_colors = []

while 2 + 2 == 4
	print "Введите Ваш любимый цвет: "
	color = gets.strip

	if color == "stop"
		puts fav_colors
		# puts fav_colors.reverse
		# puts fav_colors.uniq
		puts "Ваши любимые цвета: #{fav_colors}"
		exit
	end

	fav_colors << color
  #break
end

