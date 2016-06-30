pupils = %w[zhemevko mizyakin tsymbala khort sagaydak]

loop do

	x = 0
	
	pupils.each do |name|

		x = x + 1
		puts "#{x} #{name}"
		
	end	

	print "Who you want to disappear? "
	choice = gets.to_i
	pupils.delete_at choice - 1

end