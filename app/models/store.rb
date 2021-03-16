class Store < ApplicationRecord   
    has_many :orders
    has_one :location
    has_many :product_stores
    has_many :products, through: :product_stores
end
