class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :orderTotal

      t.timestamps
    end
  end
end
