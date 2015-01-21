require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#create' do
    it 'creates a new product, saving them to the DB' do
      product = Product.create
      expect(product).to be_a Product
      expect(product.persisted?).to be true
    end
  end

  describe '#new' do
    it 'creates a new product without saving to DB' do
      product = Product.new
      expect(product).to be_a Product
      expect(product.persisted?).to be false
    end
  end
end
