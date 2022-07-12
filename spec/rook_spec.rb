require '../src/pieces/rook.rb'

describe Rook do 
  context "An instance of rook" do
    rook = Rook.new([0,0], "white")

    it "should have a coordinate and a color" do
      expect(rook.coordinate).not_to be_nil
      expect(rook.color).not_to be_nil
    end

    
