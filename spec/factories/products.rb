FactoryBot.define do
  factory :product do
    featured { "" }
    productName { "Sample productName" }
    description { "Sample description" }
    price { "sample price" }
    categoryId { "" }
    typeId { "" }
    brandId { 1 }
  end
end
