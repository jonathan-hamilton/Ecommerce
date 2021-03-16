FactoryBot.define do
  factory :product do
    featured { false }
    productName { "MyString" }
    description { "MyString" }
    price { "9.99" }
    category_id { 1 }
    type_id { 1 }
    brand_id { 1 }
  end
end
