class LineItem < ApplicationRecord
    

    has_one :product
    has_one :orders
end
