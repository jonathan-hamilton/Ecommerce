class AddLineitemIdToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :line_item_id, :int
  end
end
