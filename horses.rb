	class Horses




	attr_accessor :type
	attr_accessor :max_speed
	attr_accessor :jockey_weight
	attr_accessor :hin_number
	@@list_of_horses = []

	# Object/Instance method
	# Encapsulation
	# Constructor
	# def initialize
		
	# 	self.type = "Thoroughbred"
	# 	self.max_speed = 10
	# 	self.jockey_weight = 8
	# 	self.hin_number = 45

		
	# 	Horses.list_of_horses.push(self)
	# end

	def display_information
		"#{self.type} #{self.max_speed} #{self.jockey_weight} #{self.hin_number}"

	end

	# Class Method
	def self.display_all_horses
	end

	def self.list_of_horses
		# p self
		@@list_of_horses
	
	end

end

nicks_car = Car.new
nicks_car.make = "Lotus"
nicks_car.model = "Elise"
nicks_car.color = "Lazer Blue"
nicks_car.back_seats = 0
nicks_car.max_speed = 160

jackies_car = Car.new
jackies_car.make = "Nissan"
jackies_car.color = "Baige"
jackies_car.model = "Versa"
jackies_car.back_seats = 3
jackies_car.max_speed = 105

adams_car = Car.new

p adams_car
p nicks_car
p jackies_car
p adams_car

class Float
end
a = "Some random string"
a = String.new("Some random string")
a = Float.new(10.0)
a = 10

a = "Hey Ryan!"
a.methodname

puts nicks_car.display_information
puts jackies_car.display_information
puts adams_car.display_information

p Car.list_of_cars
