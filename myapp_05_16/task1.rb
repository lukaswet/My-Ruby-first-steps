arr = []

loop do

		arr2 = []

		print "Enter name to add: "
		name = gets.strip

		if name == ""
				break			
		end

		print "Enter your age: "
		age = gets.strip

		arr2 << name
		arr2 << age
		arr << arr2
end

x = 0

arr.each do |item|
	x = x + 1
	puts "#{x} #{item[0]} #{item[1]}"
end	