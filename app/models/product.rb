class Product < ApplicationRecord
    validates :productName, presence: true
    validates :description, presence: true
    validates :price, presence: true

    belongs_to :category
    belongs_to :type
    belongs_to :brand
    has_many :line_item

    has_many :product_stores
    has_many :stores, through: :product_stores
    
end
