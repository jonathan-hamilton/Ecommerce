class ProductsController < ApplicationController
    def index
        products = Product.recent
        render json: serializer.new(products), status: :ok       
    end

    def serializer
        ProductSerializer
    end
end