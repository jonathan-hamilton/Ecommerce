class LineItem < ApplicationRecord
    validates :quantity, presence: true
    validates :product_id, presence: true


    #belongs_to :order
    belongs_to :product
    has_one :order
end
