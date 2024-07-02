# Create a class called MyCar. When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us the year, color, and model of the car.
# Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
# Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
	attr_accessor :year, :color, :model, :current_speed

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end

	def speed_up(speed)
		self.current_speed += speed
		"Currrent speed is #{self.current_speed} KM/h"
	end

	def current_speed=(speed)
		@current_speed = speed < 0 ? 0 : speed
	end

	def break(speed)
		self.current_speed -= speed
		"Currrent speed is #{self.current_speed} KM/h"
	end

	def shut_off
		"The car is shut off"
	end

end

car = MyCar.new(1988, 'Black', 'Fiat')

puts "The car year is: #{car.year}"
puts "The car color is: #{car.color}"
puts "The car model is: #{car.model}"

puts car.speed_up(100)
puts car.speed_up(20)
puts car.break(90)
puts car.shut_off


