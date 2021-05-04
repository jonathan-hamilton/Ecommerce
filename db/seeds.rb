#ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<table_name>'") 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.delete_all
Type.delete_all
Category.delete_all
Product.delete_all
LineItem.delete_all
Order.delete_all
Customer.delete_all
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

Product.create!(productName: "Product 1", description: "Description 1", price: 100.00, brand_id: 1, type_id: 1, category_id: 1, pic:"product-1.jpg", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper enim erat, sit amet condimentum leo pulvinar eget. Ut a ex sapien. Ut ullamcorper leo eget leo bibendum ornare. Duis non commodo felis. Suspendisse sit amet leo in ex varius euismod quis et lacus. Pellentesque quis consectetur nunc, non pellentesque lectus. Aenean ornare ante vitae quam posuere accumsan.")
Product.create!(productName: "Product 2", description: "Description 2", price: 200.00, brand_id: 2, type_id: 2, category_id: 2, pic:"product-2.jpg", description:"In hac habitasse platea dictumst. In porta dolor eu ipsum posuere elementum. Maecenas mattis, mauris et tempor convallis, justo orci facilisis nisl, in efficitur ex neque sit amet odio. Praesent fermentum dolor eget vulputate fringilla. Mauris viverra ligula at nisl iaculis vulputate.")
Product.create!(productName: "Product 3", description: "Description 3", price: 300.00, brand_id: 3, type_id: 3, category_id: 3, pic:"product-3.jpg", description:"Pellentesque nulla tellus, blandit eu ante ut, accumsan placerat mi. Sed lacinia turpis libero, in vestibulum est ullamcorper id. Quisque sit amet mi quis sem rhoncus maximus sed nec dui. Integer ut lobortis felis. Fusce in pharetra libero. Vivamus consectetur accumsan ipsum eu venenatis. Proin consectetur eleifend ligula, ut tristique tellus mollis at. Fusce molestie auctor mauris, eget mollis lorem vulputate sit amet. Nunc vitae ex vel tellus convallis gravida.")
Product.create!(productName: "Product 4", description: "Description 4", price: 400.00, brand_id: 1, type_id: 1, category_id: 1, pic:"product-4.jpg", description:"Vivamus accumsan diam vehicula, tincidunt enim vitae, porta sapien. Fusce congue nec nulla in blandit. Integer pretium iaculis augue, ac pretium erat dignissim vitae. Sed a quam metus. Integer posuere at neque in congue. Duis lectus velit, mollis vehicula volutpat id, vulputate nec nisi. Nullam iaculis ac magna et scelerisque.")
Product.create!(productName: "Product 5", description: "Description 5", price: 500.00, brand_id: 2, type_id: 2, category_id: 2, pic:"product-5.jpg", description:"Aliquam cursus euismod egestas. Sed ut magna ex. Vestibulum id posuere justo, ac faucibus arcu. In finibus consequat eros, consequat accumsan ex tincidunt a. Donec finibus, elit vel congue blandit, erat turpis pretium sem, eget ultricies odio turpis id lorem.")
Product.create!(productName: "Product 6", description: "Description 6", price: 600.00, brand_id: 3, type_id: 3, category_id: 3, pic:"product-6.jpg", description:"Nullam metus mi, elementum eget erat sit amet, vulputate scelerisque elit. Phasellus vehicula id nunc tincidunt tincidunt. Ut et est rutrum, egestas ex eget, blandit turpis. Vestibulum pulvinar nisl in ex congue lacinia. Cras rutrum ex orci, eget cursus velit feugiat vitae. Suspendisse potenti. Nulla egestas non orci at placerat.")

Customer.create!(name:"Jon", email:"jon@test.com", password:"123")
Customer.create!(name: "Riley", email:"riley@test.com", password:"123")
Customer.create!(name:"Jane", email:"jane@test.com", password:"123")

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

Store.create(storeName: "Store 1", location_id:1, pic:"store-1-sm.jpg", details:"Open, Pickup/Delivery, 8.6 miles", hours_and_more:"M-F 8-9p, Sat 10-9p, Sun 12-9p", logo:"store-logo-1.jpg")
Store.create(storeName: "Store 2", location_id:2, pic:"store-2-sm.jpg", details:"Open, Pickup, 4.3 miles", hours_and_more:"M-F 8-9p, Sat 9-9p, Sun 12-9p", logo:"store-logo-2.jpg")
Store.create(storeName: "Store 3", location_id:3, pic:"store-3-sm.jpg", details:"Open, Pickup/Delivery, 5.8 miles", hours_and_more:"M-F 12-8p, Sat 10-6p, Sun 12-5p", logo:"store-logo-3.jpg")

ProductStore.create!(store_id:1, product_id:1)
ProductStore.create!(store_id:1, product_id:2)
ProductStore.create!(store_id:1, product_id:3)
ProductStore.create!(store_id:1, product_id:4)
ProductStore.create!(store_id:1, product_id:5)
ProductStore.create!(store_id:1, product_id:6)

ProductStore.create!(store_id:2, product_id:1)
ProductStore.create!(store_id:2, product_id:2)
ProductStore.create!(store_id:2, product_id:3)

ProductStore.create!(store_id:3, product_id:4)
ProductStore.create!(store_id:3, product_id:5)
ProductStore.create!(store_id:3, product_id:6)

