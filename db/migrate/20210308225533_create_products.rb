class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :featured
      t.string :productName
      t.text :description
      t.decimal :price
      t.integer :categoryId
      t.integer :typeId
      t.integer :brandId

      t.timestamps
    end
  end
end
