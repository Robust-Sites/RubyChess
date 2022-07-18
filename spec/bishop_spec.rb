require_relative '../src/pieces/bishop.rb'
require_relative '../spec/spec_helper_methods.rb'

describe Bishop do
  context "An instance of bishop" do
    bishop = Bishop.new([5,5], "black")

    it "should have a coordinate and a color" do
      expect(bishop.coordinate).not_to be_nil
      expect(bishop.color).not_to be_nil
    end

    it "can return a list of possible_moves" do
      expect(bishop.possible_moves).not_to be_nil
    end
  end

  context "A bishop's possible_moves on coordinate [5,5]" do
    bishop = Bishop.new([5,5], "black")

    it "does not return value's that are out of bounds" do
      moveset = bishop.possible_moves
      out_of_bounds(moveset)
    end

    it "returns all coordinates except its own in available chess_lines" do
      moveset = bishop.possible_moves
      expect(moveset).not_to include([5,5])
    end

    it "returns coordinate for its moveset in array" do
      coordinates_to_test = create_coordinate_array(
                              [0,1,2,3,4,6,7,3,4,6,7],
                              [0,1,2,3,4,6,7,7,6,4,3])
      assert_coordinates(bishop, coordinates_to_test)
    end
  end

  context "A bishop's possible_moves on coordinate [4,1]" do
    bishop = Bishop.new([4,1], "black")
    it "does not return value's that are out of bounds" do 
      moveset = bishop.possible_moves
      out_of_bounds(moveset)
    end
  end
end
