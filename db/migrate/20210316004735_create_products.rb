class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :featured
      t.string :productName
      t.string :description
      t.decimal :price
      t.integer :category_id
      t.integer :type_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
