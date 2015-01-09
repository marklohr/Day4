# require './stable_inventory.rb'

# class Track

# attr_accessor :length

# def initialize
# 	self.length = 100

# end

# other entries - game over, 


puts "Please give your racehorse a name."
name1 = gets.chomp.upcase

horsename2 = Fred
horsename3 = Jed
horsename4 = Ed





track = [
	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
]

def draw_track track, horsename1, horsename2, horsename3, horsename4
	# track[0][0] == 0 ? "" : "X"
	# puts playername
	puts "#{draw_space(track[0][0])}#{horsename1}#{draw_space(track[0][1])}|#{draw_space(track[0][2])}|#{draw_space(track[0][3])}|#{draw_space(track[0][4])}|#{draw_space(track[0][5])}"
	puts '-----------------------------------------------------------------'
	puts "#{draw_space(track[1][0])}#{horsename2}#{draw_space(track[1][1])}|#{draw_space(track[1][2])}"
	puts '-----------------------------------------------------------------'
	puts "#{draw_space(track[2][0])}|#{draw_space(track[2][1])}|#{draw_space(track[2][2])}"
	puts '-----------------------------------------------------------------'
	puts "#{draw_space(track[3][0])}|#{draw_space(track[3][1])}|#{draw_space(track[3][2])}"
	puts '-----------------------------------------------------------------'


end

def draw_space track_space
	if track_space == 0
		' '
	elsif track_space == 1
		'X'
	elsif track_space == 2
		'O'
	end

	# return "hey Ryan!"
	# "hey Ryan!" - you do not need the return!
	# puts "Hey"
	# track_space + " you're cool! "
end

puts "Jockey, your horse is #{name1}."


def pick_location track, player
	puts "Press the enter key to begin the race!"

	location = gets.chomp
	if location == 1
		track[0][0] = player
	elsif location == 2
		track[0][1] = player
	elsif location == 3
		track[0][2] = player
	elsif location == 4
		track[1][0] = player
	elsif location == 5
		track[1][1] = player
	elsif location == 6
		track[1][2] = player
	elsif location == 7
		track[2][0] = player
	elsif location == 8
		track[2][1] = player
	elsif location == 9
		track[2][2] = player
	end
end

# puts draw_space(track[0][1])
# 10.times do
# 	draw_track
# end
while true
	player = 1
	draw_track(track, name1)
	pick_location(track, player)
	
	player = 2
	draw_track(track, name2)
	pick_location(track, player)
	# parenthesis are not necessary
end

# [12,3,4,5].each do |number|
# 	puts number
# end



# horse1 = Horse.new
# horse1.name = "Thoroughbred Ted"
# horse1.type = "Thoroughbred"
# horse1.hin_number = "1"
# horse1.color = "Lazer Blue"
# horse1.back_seats = 0
# horse1.max_speed = 160

# jackies_car = Car.new
# jackies_car.make = "Nissan"
# jackies_car.color = "Baige"
# jackies_car.model = "Versa"
# jackies_car.back_seats = 3
# jackies_car.max_speed = 105
