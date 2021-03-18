#ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<table_name>'") 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
LineItem.delete_all
Order.delete_all
Customer.delete_all
Brand.delete_all
Type.delete_all
Category.delete_all
Store.delete_all
Location.delete_all

ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Brand'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Type'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Category'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Product'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Customer'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'LineItem'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Order'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Location'") 
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'Store'") 

Brand.create!(brandName: "Brand 1")
Brand.create!(brandName: "Brand 2")
Brand.create!(brandName: "Brand 3")

Type.create!(typeName: "Type 1")
Type.create!(typeName: "Type 2")
Type.create!(typeName: "Type 3")

Category.create!(categoryName: "Category 1")
Category.create!(categoryName: "Category 2")
Category.create!(categoryName: "Category 3")

# Product.create!(productName: "Product 1", description: "Description 1", price: 100.00, brand_id: 1, type_id: 1, category_id: 1)
# Product.create!(productName: "Product 2", description: "Description 2", price: 200.00, brand_id: 2, type_id: 2, category_id: 2)
# Product.create!(productName: "Product 3", description: "Description 3", price: 300.00, brand_id: 3, type_id: 3, category_id: 3)
# Product.create!(productName: "Product 4", description: "Description 4", price: 400.00, brand_id: 1, type_id: 1, category_id: 3)
# Product.create!(productName: "Product 5", description: "Description 5", price: 500.00, brand_id: 2, type_id: 2, category_id: 2)
# Product.create!(productName: "Product 6", description: "Description 6", price: 600.00, brand_id: 3, type_id: 3, category_id: 1)

Customer.create!(name:"Jon", email:"jon@test.com")
Customer.create!(name: "Riley", email:"riley@test.com")
Customer.create!(name:"Jane", email:"jane@test.com")

# LineItem.create!(quantity: 1, product_id: 1)
# LineItem.create!(quantity: 2, product_id: 2)
# LineItem.create!(quantity: 3, product_id: 3)
# LineItem.create!(quantity: 4, product_id: 4)
# LineItem.create!(quantity: 5, product_id: 5)
# LineItem.create!(quantity: 6, product_id: 6)

# Order.create!(line_item_id: 1, customer_id: 1)
# Order.create!(line_item_id: 2, customer_id: 2)
# Order.create!(line_item_id: 3, customer_id: 3)


Location.create(zipCode:00001)
Location.create(zipCode:00002)
Location.create(zipCode:00003)

Store.create(storeName: "Store 1", location_id:1)
Store.create(storeName: "Store 2", location_id:2)
Store.create(storeName: "Store 3", location_id:3)



