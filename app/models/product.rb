class Product < ApplicationRecord
    validates :productName, presence: true
    validates :description, presence: true
    validates :price, presence: true

    belongs_to :line_item

    scope :recent, -> { order(created_at: :desc) }
    
end
