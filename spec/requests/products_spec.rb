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
            body = JSON.parse(response.body).deep_symbolize_keys
            expect(body).to eq(
                data: [
                    {
                        id: product.id.to_s,
                        type: 'products',
                        attributes: {
                            productName: product.productName,
                            description: product.description,
                            price: product.price.to_s
                        }
                    }
                ]
            )
        end
    end
end