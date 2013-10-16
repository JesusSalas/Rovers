class Compass
  attr_accessor :x
  attr_accessor :y
  attr_accessor :orientation

  def initialize(x,y,orientation)
    @x = x
    @y = y
    @orientation = orientation
  end

  def turn_left
    to_left = {"N" => "W", "W" => "S", "S" => "E", "E" => "N"}
    @orientation = to_left[@orientation]
  end

  def turn_right
    to_right = {"N" => "E", "W" => "N", "S" => "W", "E" => "S"}
    @orientation = to_right[@orientation]
  end

  def move
    to_move = {"N" => @y+1, "W" => @x-1, "S" => @y-1, "E" => @x+1}

    if (@orientation == "N" or @orientation == "S")
      @y = to_move[@orientation]
    elsif (@orientation == "E" or @orientation == "W")
      @x = to_move[@orientation]
    end
  end
end
