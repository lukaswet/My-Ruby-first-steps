people = ["ruslan", "maryana", "kristina", "natasha"]

x = 0

people.each do |name|
	puts "#{x} #{name}"
	x = x + 1
end	











# people = %w[ruslan maryana kristina natasha 21] # ще один спосіб запису масиву

# puts people[0..3] # показати елементи масиву від 0 до 3 (1-4)