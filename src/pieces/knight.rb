require_relative 'piece'
require_relative 'piece_helpers'

class Knight < Piece
    def initialize(coordinate, color)
        super(coordinate, color)
        @x = coordinate[0]
        @y = coordinate[1]
    end

    def possible_moves
        moves = []
        moves
    end
    
    def return_moves
        #check confines of start values
        x_start = @x - 3 
        while x_start < 0
            x_start += 1
        end
        y_start = @y - 3 
        while y_start < 0
            y_start += 1
        end

        #check confines of end values
        x_final = @x + 3
        while x_final > 7
            x_final -= 1
        end
        y_final = @y + 3
        while y_final > 7
            y_final -= 1
        end

        #actual logic
    end
end