class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :orderTotal
      t.integer :customer_id
      t.integer :store_id

      t.timestamps
    end
  end
end
