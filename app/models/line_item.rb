class LineItem < ApplicationRecord
    validates :quantity, presence: true
    validates :product_id, presence: true

    belongs_to :order

end
