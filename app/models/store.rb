class Store < ApplicationRecord
    validates :storeName, presence: true
    validates :location_id, presence: true

    belongs_to :location
end
