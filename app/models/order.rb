class Order < ApplicationRecord
    has_many :line_items
    has_one :customer
end
