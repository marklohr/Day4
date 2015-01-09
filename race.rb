class Horse
  attr_accessor :name   #horse name
  attr_accessor :number   #horse number
  attr_accessor :position   #random number of movements on track

def initialize
  self.position = 0
end


  def full_name
    self.name + " " + self.number + " " + self.position.to_s

  end

  def move_forward
    self.position = self.position + rand(3..10)
  end

end

class Track
  attr_accessor :horses    
  attr_accessor :name   #name of track, location of horse (full_name) on track?

  def initialize
    self.horses = []
  end

end

horse_info = Horse.new
horse_info.name = "Ted"
horse_info.number = "3"


horse_info2 = Horse.new
horse_info2.name = "Ned"
horse_info2.number = "6"

horse_info3 = Horse.new
horse_info3.name = "Zed"
horse_info3.number = "9"

horse_info4 = Horse.new
horse_info4.name = "Ackmed"
horse_info4.number = "12"

# classroom = []
# classroom.push(horse_info)
# classroom.push(student_info2)
# classroom.push(student_info3)
# puts classroom.inspect
# puts classroom.length


track_info = Track.new
track_info.name = "Iron Derby"
track_info.horses.push(horse_info)
track_info.horses.push(horse_info2)
track_info.horses.push(horse_info3)
track_info.horses.push(horse_info4)

# track_info2 = Classroom.new
# track_info2.name = "Front End"
# track_info2.horses.push(horse_info3)



while true
track_info.horses[0].move_forward
track_info.horses[1].move_forward
track_info.horses[2].move_forward
track_info.horses[3].move_forward

p track_info.horses[0].full_name
p track_info.horses[1].full_name
p track_info.horses[2].full_name
p track_info.horses[3].full_name

sleep 1

end