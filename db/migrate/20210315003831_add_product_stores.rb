class AddProductStores < ActiveRecord::Migration[6.0]
  def change
    create_table :product_stores do |t|
      t.integer :product_id
      t.integer :store_id
    end
  end
end
