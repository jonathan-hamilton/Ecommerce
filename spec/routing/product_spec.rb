require 'rails_helper'

RSpec.describe '/products routes' do
    it 'routes to products index' do
        expect(get '/products').to route_to('products#index')
    end

    #CRUD
end