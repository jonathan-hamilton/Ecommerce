class Order < ApplicationRecord
    has_many :line_items
    has_many :customers
end
