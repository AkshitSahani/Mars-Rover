class Rover
   attr_accessor :location, :direction
  def initialize(location, direction)
    @location = location
    @direction = direction
  end

  def read_instruction
    user_input = gets.chomp
    # commands = user_input.each_char.to_a
    user_input.each_char do |command|
      if command == "L" || command  == "R"
        turn(command)
      elsif command == "M"
        move(command)
      end
    end
    print [@location, @direction]
  end

  def turn(command)
    if @direction == "N" && command == "L"
      @direction = "W"
    elsif @direction == "N" && command == "R"
      @direction = "E"
    elsif @direction == "S" && command == "L"
      @direction = "E"
    elsif @direction == "S" && command == "R"
      @direction = "W"
    elsif @direction == "E" && command == "L"
      @direction = "N"
    elsif @direction == "E" && command == "R"
      @direction = "S"
    elsif @direction == "W" && command == "L"
      @direction = "S"
    elsif @direction == "W" && command == "R"
      @direction = "N"
    else
      puts "Wrong command"
    end
  end

    def move(command)
      if @direction == "N"
        @location = [(@location[0]), ((@location[1]) + 1)]
      elsif @direction == "S"
        @location = [(@location[0]), ((@location[1]) - 1)]
      elsif @direction == "W"
        @location = [((@location[0]) - 1), (@location[1])]
      elsif @direction == "E"
        @location = [((@location[0]) + 1), (@location[1])]
      end
    end
end
