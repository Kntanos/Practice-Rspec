require "checkout"

describe Basket do

    describe ".add_item" do
        context do
            "When an item is added to the basket"
            it "should add the item and its price to the basket's list" do
                basket = Basket.new()
                item = Product.new("item", 3.00)
                basket.add_item(item)
                expect(basket.list).to include({"item" => 3.00})
            end
        end
    end
end