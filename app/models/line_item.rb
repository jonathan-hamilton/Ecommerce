class LineItem < ApplicationRecord
    validates :quantity, presence: true
    validates :product, presence: true


    belongs_to :product
    
end
