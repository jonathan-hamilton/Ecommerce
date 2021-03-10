require 'rails_helper'

RSpec.describe ProductsController do
    describe '#index' do
        it 'return a successful response' do
            get '/products'
            expect(response).to have_http_status(:ok)
        end

        it 'returns a proper JSON' do
            product = create :product
            get '/products'
            expect(json_data.length).to eq(1)
            expected = json_data.first
            aggregate_failures do
                expect(expected[:id]).to eq(product.id.to_s)
                expect(expected[:type]).to eq('products')
                expect(expected[:attributes]).to eq(
                    productName: product.productName,
                    description: product.description,
                    price: product.price.to_s
                )
            end
        end
    end
end