require_relative '../src/pieces/bishop.rb'
require_relative '../spec/spec_helper_methods.rb'

describe Bishop do
  context "An instance of knight" do
    knight = Knight.new([5,5], "black")