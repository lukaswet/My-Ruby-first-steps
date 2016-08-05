class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_reader :speed

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?
		return @speed > 0 #Якщо шв. більше нуля
	end

end	

models = ['Airbus-333', 'Boeing-888', 'Il-62']
planes = []

1000.times do 
	model = models[rand(0..2)]
	plane = Airplane.new(model)

	if rand(0..1) == 1
		plane.fly
	end

	planes << plane
end

planes.each do |plane|
	puts "Model: #{plane.model}, Speed: #{plane.speed}, Altitude: #{plane.altitude}"
	puts "Is moving: #{plane.moving?}"
end	
