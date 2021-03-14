class Store < ApplicationRecord
    has_many :products
    has_many :orders
    has_one :location
end
