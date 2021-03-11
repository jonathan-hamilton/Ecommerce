class ProductsController < ApplicationController
    include Paginable
    
    def index
        paginated = paginate(Product.recent)
        render_collection(paginated)
    end

    def serializer
        ProductSerializer
    end
end