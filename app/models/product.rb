class Product < ApplicationRecord
    validates :productName, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :category_id, presence: true
    validates :type_id, presence: true
    validates :brand_id, presence: true

    belongs_to :category
    belongs_to :type
    belongs_to :brand
    
end
