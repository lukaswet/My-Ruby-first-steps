class Animal
	def initialize name
		@name = name
	end

	def run
		puts "#{@name} is running..."
	end

	def jump
		eat
		puts "#{@name} is jumping..."
		sleep
	end

  private

	def eat
		puts "I'm eating"
	end

	def sleep
		puts "I'm sleeping"
	end
end

animal = Animal.new 'cat'
animal.jump