class AddCustomerIdToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer_id, :int
  end
end
