require './horses.rb'

class Inventory
	attr_accessor :horse_data

	def initialize
		self.horse_data = [ ]
	end

# 	def add_car *car_list
# 		car_list.each do |car|
# 			new_car = Car.new
# 			new_car.make = car[:make]
# 			new_car.color = car[:color]
# 			new_car.model = car[:model]
# 			new_car.back_seats = car[:back_seats]
# 			new_car.max_speed = car[:max_speed]
# 			new_car.vin_number = car[:vin_number]
# 			self.car_data.push(new_car)
# 		end
# 	end

# 	def remove_car vin_number
# 		self.car_data.delete_if do |car|
# 			car.vin_number == vin_number
# 		end
# 	end

# 	def populate_cars
# 		puts "Populate your car data"
# 		hash = {}
# 		keep_populating = true
# 		while keep_populating
# 			puts "Current Invetory:"
# 			puts self.car_data
# 			puts "Make:"
# 			hash[:make] = gets.chomp
# 			puts "Model:"
# 			hash[:model] = gets.chomp
# 			puts "Color:"
# 			hash[:color] = gets.chomp
# 			puts "Back Seats:"
# 			hash[:back_seats] = gets.chomp
# 			puts "Max Speed:"
# 			hash[:max_speed] = gets.chomp
# 			puts "Vin Number:"
# 			hash[:vin_number] = gets.chomp
# 			self.add_car(hash)
# 			puts "Add another? y/n"
# 			answer = gets.chomp
# 			if answer == 'n'
# 				keep_populating = false
# 			end
# 		end
# 	end
# end

stable_inventory = Inventory.new

horse1 = {
	type: "Thoroughbred",
	max_speed: "10",
	hin_number: "20"
}

horse2 = {
	type: "Thoroughbred",
	max_speed: "10",
	hin_number: "40"
}

horse3 = {
	type: "Mustang",
	max_speed: "7",
	hin_number: "10"
}

horse4 = {
	type: "Jackass",
	max_speed: "3",
	hin_number: "30"
}


p stable_inventory.horse_data


stable_inventory.populate_horses








