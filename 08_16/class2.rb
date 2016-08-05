class Book

	def initialize
		@hh = {}
	end

	def add_person options

		puts "Already exists!" if @hh[options[:name]]

		@hh[options[:name]] = options[:age]	

	end


	def show_hash
		@hh.keys.each do |key|
			age = @hh[key]
		puts "Name: #{key}, age #{age}"
		end	
	end

	# Щоб вивести змінну - пишем метод
	def aaa
		@hh
	end

end

b = Book.new
b.add_person :name => 'Walt', :age => 55
b.show_hash

puts b.aaa # а тут виводимо змінну
