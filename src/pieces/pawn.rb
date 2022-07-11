require_relative 'piece'

class Pawn < Piece
  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end

  def possible_moves
    moves = []
    moves
  end

  def is_white?
    @color == 'white'
  end

  def at_start?
    if self.is_white?
      return @y == 1
    else 
      return @y == 6
    end
  end

  def forward(counter=1)
    if self.is_white?
      return [@x, @y + counter]
    else
      return [@x, @y - counter]
    end
  end

  def left(counter=1)
    if self.is_white?
      return [@x, @y + counter]
    else
      return [@x, @y - counter]
  end

  def right(counter=1)
    if self.is_white?
      return [@x, @y + counter]
    else
      return [@x, @y - counter]
    end
  end

  def take_left(counter=1)
    if self.is_white?
      return [@x - counter, @y + counter]
    else
      return [@x + counter, @y - counter]
    end
  end

  def take_right(counter=1)
    if self.is_white?
      return [@x + counter, @y + counter]
    else
      return [@x - counter, @y - counter]
    end
  end
end
