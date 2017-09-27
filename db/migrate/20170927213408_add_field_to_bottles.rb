class AddFieldToBottles < ActiveRecord::Migration[5.1]
  def change
    add_column :bottles, :image, :string
    add_column :bottles, :map, :string
  end
end
