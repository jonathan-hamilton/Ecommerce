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

        it 'returns products in the proper order' do
            older_product = 
                create(:product, created_at: 1.hour.ago)
            recent_product = create(:product)
            
            get '/products'
            ids = json_data.map { |item| item[:id].to_i }
            expect(ids).to(
                eq([recent_product.id, older_product.id])
            )        
        end

        it 'paginates results' do
            product1, product2, product3 = create_list(:product, 3)
            get '/products', params: { page: { number: 2, size: 1 } }
            expect(json_data.length).to eq(1)
            expect(json_data.first[:id]).to eq(product2.id.to_s)
        end

        it 'contains pagination links in the response' do
            product1, product2, product3 = create_list(:product, 3)
            get '/products', params: { page: { number: 2, size: 1 } }
            expect(json[:links].length).to eq(5)
            expect(json[:links].keys).to contain_exactly(
                :first,:prev,:next,:last,:self
            )
        end       
    end
end