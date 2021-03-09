require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#validations' do
    let(:product) { build(:product) }

    it 'has an invalid name' do
      product.productName = ''
      expect(product).not_to be_valid
      expect(product.errors[:productName]).to include("can't be blank")
    end

    it 'has an invalid description' do
      product.description = ''
      expect(product).not_to be_valid
      expect(product.errors[:description]).to include("can't be blank")
    end

    it 'has a nil price' do
      product.price = nil
      expect(product).not_to be_valid
      expect(product.errors[:price]).to include("can't be blank")
    end

    # categoryId
    # typeId
    # brandId
  end
end
