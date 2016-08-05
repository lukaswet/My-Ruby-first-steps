class Book

	attr_reader :last_person

	def initialize
		@hh = {}
		@last_person = ''
	end

	def add_person options
		@last_person = options[:name]

		puts "Already exists!" if @hh[options[:name]]

		@hh[options[:name]] = options[:age]	

	end


	def show_hash
		@hh.keys.each do |key|
			age = @hh[key]
		puts "Name: #{key}, age #{age}"
		end	
	end

    # Цей метод замынений на початку - attr_reader :last_person
	# def last_person
	# 	@last_person
	# end

end

b = Book.new
b.add_person :name => 'Walt', :age => 55
b.add_person :name => 'Lukas', :age => 29
b.add_person :name => 'Kris', :age => 23

b.show_hash

puts "Last person: #{b.last_person}"