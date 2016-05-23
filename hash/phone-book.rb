phonebook = {}

loop do

		puts "Enter name (Enter to stop)  "
		name = gets.strip

		if name == ""
				break
		end	

		puts "Enter phone number:  "
		phone_number = gets.strip

		phonebook[name] = phone_number

end

# puts phonebook['lukas']  # - викликати елемент з хешу

phonebook.each do |key, value|
		puts "Name: #{key} | Number: #{value}"
end	