class OrderIscompleteAndCustomerOrderid < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :isComplete, :boolean
    add_column :customers, :orders, :integer, array: true, default: []
  end
end
