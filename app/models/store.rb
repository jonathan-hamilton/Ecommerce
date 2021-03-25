class Store < ApplicationRecord
    validates :storeName, presence: true
    validates :location_id, presence: true

    belongs_to :location
    has_many :orders

    has_many :product_stores
    has_many :products, through: :product_stores
end
