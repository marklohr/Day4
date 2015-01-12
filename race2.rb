
system("clear")
p "Place your bets and choose the winning horse:  Ted, Ned, Zed, or Jed!"
winning_horse_name = gets.chomp


class Horse
  attr_accessor :name   #horse name
  attr_accessor :position   #random number of movements on track

  def initialize
    self.position = 0
  end

  def full_name
    self.name + " " + self.position.to_s
  end

  def move_forward
    random_value = rand(3..10)
    self.position = self.position += random_value  
  end
end

class Track
  attr_accessor :horses    
  attr_accessor :length
  attr_accessor :name   #name of track, location of horse (full_name) on track?

  def initialize
    self.horses = []
  end

  def display_pos horsey
    remaining = length - horsey.position < 0 ? 0 : length - horsey.position

    ran = horsey.position - 1
    if horsey.position < 1 
      ran = 0
    elsif horsey.position > length
      ran = length - 1
    end

    puts ("." * ran) + horsey.name + (" " * remaining) + "|"
    puts 

   
  end
end

class RaceDay
  horse_info = Horse.new
  horse_info.name = "Ted"

  horse_info2 = Horse.new
  horse_info2.name = "Ned"

  horse_info3 = Horse.new
  horse_info3.name = "Zed"

  horse_info4 = Horse.new
  horse_info4.name = "Jed"

  track_info = Track.new
  track_info.name = "Iron Derby"
  track_info.length = 150
  track_info.horses.push(horse_info)
  track_info.horses.push(horse_info2)
  track_info.horses.push(horse_info3)
  track_info.horses.push(horse_info4)

  # starting positions
  p track_info.name
  for horse in track_info.horses
    track_info.display_pos horse
  end

  # race starts
  winning_horse_position = 0
  winning_horse_name = ""

  while winning_horse_position < track_info.length
    system("clear")

    for horse in track_info.horses
      horse_position = horse.move_forward

      if horse_position > winning_horse_position
        winning_horse_position = horse_position
        winning_horse_name = horse.name
      end

      track_info.display_pos horse
    end

    p "...here they come, " + winning_horse_name + " is in the lead!"
      

    #winning_pos = horse_position_0
    #winning_pos = horse_position_1 > winning_pos ? horse_position_1 : winning_pos
    #winning_pos = horse_position_2 > winning_pos ? horse_position_2 : winning_pos
    #winning_pos = horse_position_3 > winning_pos ? horse_position_3 : winning_pos

    #track_info.display_pos(track_info.horses[0])
    #track_info.display_pos(track_info.horses[1])
    #track_info.display_pos(track_info.horses[2])
    #track_info.display_pos(track_info.horses[3])
        
    sleep 1

    p "Zed seems to have a limp.  Tap the Z key to finish him.  (#Cheat not currently functioning)"  
  

  end

  p "Ladies & gentlemen, the winner is " + winning_horse_name + "!"
  # n.location.times do |variable|
end
