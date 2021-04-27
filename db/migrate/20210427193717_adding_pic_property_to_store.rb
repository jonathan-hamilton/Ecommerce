class AddingPicPropertyToStore < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :pic, :string
  end
end
