class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: serializer.new(products), status: :ok       
    end

    def serializer
        ProductSerializer
    end
end