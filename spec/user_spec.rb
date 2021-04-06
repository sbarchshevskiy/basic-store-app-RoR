
require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    @category = Category.create(name: 'Test')
    products = Product.new(name: "TestProduct", category: @category, quantity: 1, price: 1000)

    it "should have a name" do
      expect(products.name).to be_truthy
    end

    it "should have a price" do
      expect(products.price).to be_truthy
    end

    it "should have a quantity" do
      expect(products.quantity).to be_truthy
    end

    it "should have a category listed" do
      expect(products.category).to be_truthy
    end

  end
end