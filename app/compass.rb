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
    move_y = {"N" => @y+1, "W" => @y, "S" => @y-1, "E" => @y}
    move_x = {"N" => @x, "W" => @x-1, "S" => @x, "E" => @x+1}
    @y = move_y[@orientation]
    @x = move_x[@orientation]
  end
end
