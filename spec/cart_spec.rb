require_relative '../lib/cart.rb'

describe "An instance of", Cart do

  before :each do
    @cart = Cart.new
  end

  it "should be properly initialized" do
    expect(@cart).to be_a(Cart)
  end

  context "when new" do
    it "contains no items" do
      expect(@cart).to be_empty
    end
  end

  context "when empty" do
    it "is no longer empty after adding an item" do
      @cart.add_item("cat", 0, 1)
      expect(@cart).not_to be_empty
    end
  end

  context "with items" do
    it "has a total value equal to the sum of each items' value times its quantity" do
      @cart.add_item("cat", 10, 1)
      @cart.add_item("hat", 20, 2)
      expect(@cart.get_total).to eq(50)
    end
  end

  context "with more than one of an item"
    it "increasing the quanity of an item should not increase the cart's unique item count" do
      @cart.add_item("cat", 10, 1)
      @cart.add_item("hat", 20, 2)
      expect(@cart.get_items.length).to eq(2)
    end
end
