class AddHoursAndMoreToStore < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :hours_and_more, :string
  end
end
