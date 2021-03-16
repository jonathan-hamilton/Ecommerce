FactoryBot.define do
  factory :order do
    orderTotal { "9.99" }
    customer_id { 1 }
    store_id { 1 }
    line_item_id { 1 }
  end
end
