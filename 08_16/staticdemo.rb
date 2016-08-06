class Manager
	def self.say_hi
		puts "Hello"
	end
end

class Hipster
	def self.say_hi
		puts "Hi!"
	end
end

class Lukas
	def say_hi # ERROR (має бути self)
		puts "Aloha!"
	end
end

Manager.say_hi
Hipster.say_hi
Lukas.say_hi