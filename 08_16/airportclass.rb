class Airport
	attr_reader :name
	attr_reader :planes

	def initialize(name)
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end



class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

# Створюєм аеропорти
airports = []

airport1 = Airport.new 'Borispyl'
airport2 = Airport.new 'Lviv'

# Додаємо аеропорти в масив
airports << airport1
airports << airport2

# Створення літаків для 1-го аеропорту
plane1 = Plane.new 'Boeing-888'
plane2 = Plane.new 'Il-62'
plane3 = Plane.new 'Airbus'

# Додаємо літаки в 1 аеропорт
airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

# Створення літаків для 2-го аеропорту
plane_a = Plane.new 'AAA'
plane_b = Plane.new 'BBB'
plane_c = Plane.new 'CCC'

# Додаємо літаки в 2-гий аеропорт
airport2.add_plane plane_a
airport2.add_plane plane_b
airport2.add_plane plane_c

airports.each do |airport|
	puts "Airport: #{airport.name}"

	airport.planes.each do |plane|
		puts "Plane: #{plane.model}"
	end
end