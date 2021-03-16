class Product < ApplicationRecord
    validates :productName, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :category, presence: true
    validates :type, presence: true
    validates :brand, presence: true

    has_many :line_item
    belongs_to :brand
    belongs_to :type
    belongs_to :category
    has_many :product_stores
    has_many :stores, through: :product_stores

    scope :recent, -> { order(created_at: :desc) }
    
end
