# Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't
# specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information
# about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that
# separates it from the MyCar class in some way.

# Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass.
# Create a method to print out the value of this class variable as well.

class Vehicle
    @@number_of_vehicles = 0

    def self.number_of_vehicles
        @@number_of_vehicles
    end

    def initialize
        @@number_of_vehicles += 1
    end

    def speed_up(speed)
        "Currrent speed is #{speed} KM/h"
	end
end

module Towable
  def canTow?
    true
  end
end

class MyCar < Vehicle
    LICENSE_PLATE = 'ABC-123'
end

class MyTruck < Vehicle
    include Towable

    LICENSE_PLATE = 'CDE-345'
end

car = MyCar.new
puts car.speed_up(100)

truck = MyTruck.new
puts truck.speed_up(120)
puts truck.canTow?

puts Vehicle.number_of_vehicles
