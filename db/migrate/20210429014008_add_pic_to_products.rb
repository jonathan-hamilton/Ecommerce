class AddPicToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pic, :string
  end
end
