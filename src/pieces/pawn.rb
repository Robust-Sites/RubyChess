require_relative 'piece'
require_relative 'piece_helpers'

class Pawn < Piece
  def initialize(coordinate, color)
    super(coordinate, color)
    @x = coordinate[0]
    @y = coordinate[1]
  end

  def possible_moves
    moves = [
      forward, 
      take_left,
      take_right
    ] 

    if at_start?
      moves.push(forward 2)
    end

    return filter_out_of_bounds(moves)
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
      return([@x, @y + counter])
    else
      return([@x, @y - counter])
    end
  end

  def left(counter=1)
    if self.is_white?
      return [@x, @y + counter]
    else
      return [@x, @y - counter]
    end
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
