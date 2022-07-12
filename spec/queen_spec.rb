require_relative '../src/pieces/queen.rb'
require_relative '../spec/spec_helper_methods.rb'

describe Queen do 
  context "An instance of queen" do 
    queen = Queen.new([0,0], "white")

    it "should have a coordinate and a color" do 
      expect(queen.coordinate).not_to be_nil
      expect(queen.color).not_to be_nil
    end

    it "can return a list of possible_moves" do 
      expect(queen.possible_moves).not_to be_nil
    end
  end

  context "A queen's possible_moves" do
    queen = Queen.new([0,0], "white")

    it "does not return value's that are out of bounds" do 
      moveset = queen.possible_moves
      out_of_bounds(moveset)
    end

    it "returns all coordinates except its own in available chess_lines" do 
      moveset = queen.possible_moves
      expect(moveset).not_to include([0,0])
    end 

    it "returns coordinates for its moveset in array" do 
      coordinates_to_test = create_coordinate_array(
                              [0,0,0,0,0,0,0,1,2,3,4,5,6,7,1,2,3,4,5,6,7],
                              [1,2,3,4,5,6,7,1,2,3,4,5,6,7,0,0,0,0,0,0,0])
      assert_coordinates(queen, coordinates_to_test)
    end
  end
end
