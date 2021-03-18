class Order < ApplicationRecord
    validates :line_item_id, presence: true
    # validates :customer_id, presence: true
    # validates :store_id, presence: true

    
    belongs_to :line_item
end
