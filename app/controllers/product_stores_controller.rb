class ProductStoresController < ApplicationController

    def create 
        @product_store = ProductStore.create(:store_id, :product_id)
    end

end