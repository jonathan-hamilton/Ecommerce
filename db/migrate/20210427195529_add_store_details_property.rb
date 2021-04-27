class AddStoreDetailsProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :details, :string
  end
end
