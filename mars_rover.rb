
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
        turn(chr)
      end
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

  def turn(heading)
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

end


# USER PROPMTS FOR ROVER DATA
puts "enter the size of your plateau (please enter two numbers like so: 5 5):"
plateau = gets.chomp.split

puts "Please enter the current location of the Rover:"
rover_init = gets.chomp.split

# DATA STORED IN ARRAY WITH SPECIFIED INDEX
x_coordinate = rover_init[0].to_i
y_coordinate = rover_init[1].to_i
direction = rover_init[2]
# => [x_coordinate, y_coordinate, direction]

rover1 = Rover.new(x_coordinate[0], y_coordinate[1], direction[2])
puts "#{x_coordinate}, #{y_coordinate}, #{direction}"

puts "Please enter the commands for the rover (for example us M to move, L to turn left and R to turn right)"
direction_array = gets.chomp.upcase.split

puts "The current location of the Rover is #{x_coordinate}, #{y_coordinate}, #{direction}"

# x_max == plateau[0].to_i
# y_max == plateau[1].to_i
