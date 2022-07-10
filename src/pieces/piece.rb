class Piece
  attr_accessor :coordinate, :color 
  
  def initialize(coordinate, color)
    @coordinate = coordinate
    @color      = color
  end

  def info 
    puts "Coordinate:#{@coordinate}, color: #{@color}"
  end
end

