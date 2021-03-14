class AddProductIdToLineitemTable < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :product_id, :int
  end
end
