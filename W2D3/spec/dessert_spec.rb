require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Kelia") }
  subject(:pie) { Dessert.new("pie", 10, chef) }
 
  describe "#initialize" do
    it "sets a type"
      expect(pie.type).to eq("pie")
    end

    it "sets a quantity"
      expect(pie.quantity).to eq(10)
    end

    it "starts ingredients as an empty array"
      expect(pie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity"
      expect { Dessert.new("pie", "ten", :chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      expect(pie.ingredients).to eq([])
      pie.add_ingredient("pumpkin")
      expect(pie.ingredients).to include("pumpkin")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
      pie.add_ingredient("pumpkin")
      pie.add_ingredient("eggs")
      pie.add_ingredient("sugar")
      ingredients_copy = pie.ingredients.dup
      pie.mix!

      expect(pie.ingredients).to include(["pumpkin", "eggs", "sugar"])
      expect(pie.ingredients).not_to eq([ingredients_copy)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      pie.eat(9)
      expect(dessert.quantity).to eq(1)
    end
    it "raises an error if the amount is greater than the quantity"
      expect{ pie.eat(20) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      allow(chef).to receive(:titleize).and_return("Chef Kelia the Great Baker")
      expect(pie.serve).to eq("Chef Kelia the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
      expect(chef).to receive(:bake).with(pie)
      pie.make_more
    end
  end
end
