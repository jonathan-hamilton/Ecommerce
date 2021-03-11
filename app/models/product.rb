class Product < ApplicationRecord
    validates :productName, presence: true
    validates :description, presence: true
    validates :price, presence: true

    scope :recent, -> { order(created_at: :desc) }
    
end
