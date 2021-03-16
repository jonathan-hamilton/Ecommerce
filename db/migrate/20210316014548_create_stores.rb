class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :storeName
      t.integer :location_id

      t.timestamps
    end
  end
end
