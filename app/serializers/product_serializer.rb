class ProductSerializer
  include JSONAPI::Serializer
  set_type :products
  attributes :productName, :description, :price
end
