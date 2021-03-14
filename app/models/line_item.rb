class LineItem < ApplicationRecord
    

    has_one :product
    belongs_to :orders
end
