class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :storeName

      t.timestamps
    end
  end
end
