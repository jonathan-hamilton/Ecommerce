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

  describe '.recent' do
    it 'returns products in the correct order' do
      older_product = 
        create(:product, created_at: 1.hour.ago)
      recent_product = create(:product)

      expect(described_class.recent).to eq(
        [recent_product, older_product]
      )

      recent_product.update_column(:created_at, 2.hours.ago)

      expect(described_class.recent).to eq(
        [ older_product, recent_product]
      )
    end
  end
end
