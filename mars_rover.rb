
class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instruction)
    instruction.each_char do |chr|
      if chr == "M"
        move
      else
        turn(chr.upcase)
    end
  end

  def move
    if @direction == "N"
      @y_coordinate += 1
    elsif @direction == "S"
      @y_coordinate -= 1
    elsif @direction == "W"
      @x_coordinate -= 1
    else @direction == "E"
      @x_coordinate += 1
    end
  end

  def turn_right(heading)
    if heading == "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      end
    elsif heading == "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      end
    end





  end

  def turn_left(heading)

  end

end

rover1 = Rover.new()

p "plateau size"
plateau = gets.chomp.split
p "Where is the Rover?"
rover_init = gets.chomp.split

@x_coordinate = rover_init[0].to_i
@y_coordinate = rover_init[1].to_i
@direction = rover_init[2]
puts "#{@x_coordinate}, #{@y_coordinate}, #{@direction}"

x_max == plateau[0].to_i
y_max == plateau[1].to_i


p "Rover commands"
direction_array = gets.chomp.split

direction_array.each do |direction|
  if direction == l


end
