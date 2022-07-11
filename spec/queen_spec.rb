require_relative '../src/pieces/queen.rb'

describe Queen do 
  context "An instance of queen" do 
    queen = Queen.new([0,0], "white")

    it "should have a coordinate and a color" do 
      expect(queen.coordinate).not_to be_nil
      expect(queen.color).not_to be_nil
    end

    it "can return a list of possible_moves" do 
      expect(queen.possible_moves
    end
  end

  context "A queen's possible_moves" do
    queen = Queen.new([0,0], "white")
    it "should not return value's that are out of bounds" do 
      expect(queen.possible_moves).to
    end
  end
end
