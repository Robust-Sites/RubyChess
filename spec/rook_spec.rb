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
  end

  #context "A rook's possible_moves" do
  #  rook = Rook.new([0,0], "white")
  #  it "should not return value's that are out of bounds" do
  #    expect(rook.possible_moves).to
  #  end
  #end
end

