require_relative '../src/pieces/king.rb'

describe King do
  context "An instance of king" do 
    king = King.new([4, 0], "white")

    it "should have a coordinate" do 
      expect(king.coordinate).not_to be_nil
    end

    it "should have a color" do 
      expect(king.color).not_to be_nil
    end

    it "returns moveset of possible_moves" do 
      expect(king.possible_moves).not_to be_nil
    end
  end

  context "king on edge of board" do 
    king = King.new([4, 0], "white")

    it "returns coordinate moveset that is not out of bounds" do 
      moveset = create_coordinate_array(
                  [3,3,4,5,5],
                  [1,0,1,1,0])
      assert_coordinates(king, moveset)
    end
  end

  context "king in middle of board" do 
    king = King.new([4, 2], "white")

    it "can move 1 space in every direction" do 
      moveset = create_coordinate_array(
                  [3,3,3,4,4,5,5,5],
                  [3,2,1,3,1,3,2,1])
      assert_coordinates(king, moveset)
    end
  end
end
