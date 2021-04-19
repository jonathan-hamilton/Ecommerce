class Order < ApplicationRecord
    validates :line_item_id, presence: true
    validates :customer_id, presence: true
    validates :store_id, presence: true
    
    has_many :line_item
    belongs_to :customer
    belongs_to :store
end
