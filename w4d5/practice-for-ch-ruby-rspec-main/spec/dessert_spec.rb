require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do

    it "sets a type" do 
      expect(dessert.type).to eq("icecream")

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(50)

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to eq([])

    it "raises an argument error when given a non-integer quantity"

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    dessert = Dessert.new("icecream", 50, "same")
    dessert.add_ingredient("new")
    expect(dessert.ingredients).to include("new")
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert = Dessert.new("icecream",50,"sam")
      dessert.eat(5)
      expect(dessert.quantity).to eq(45)

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      dessert = Dessert.new("icecream",50, "sam")
      expect(dessert.serve).to eq("Sam has made 50 icecream")

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
    dessert = Dessert.new("icecream", 50 , "sam")
    dessert.make_more
  end
end