require_relative '../src/pieces/rook.rb'

describe Rook do 
  context "An instance of rook" do
    rook = Rook.new([0,0], "white")

    it "should have a coordinate and a color" do
      expect(rook.coordinate).not_to be_nil
      expect(rook.color).not_to be_nil
    end
    
    it "can return a list of possible_moves" do
      expect(rook.possible_moves).not_to be_nil
    end

    it "returns all coordinates except its own available chess_lines" do
      moveset = rook.possible_moves
      expect(moveset).not_to include([0,0])
    end

    it "returns coordinate for its moveset in array" do
      coordinates_to_test = create_coordinate_array(
                              [1,2,3,4,5,6,7,0,0,0,0,0,0,0],
                              [0,0,0,0,0,0,0,1,2,3,4,5,6,7])
      assert_coordinates(bishop, coordinates_to_test)
      end
  end

end

