class Store < ApplicationRecord   
    validates :location_id, presence: true
    validates :storeName, presence: true

    has_many :orders
    has_one :location
    has_many :product_stores
    has_many :products, through: :product_stores
end
