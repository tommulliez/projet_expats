class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :chateau
      t.string :name
      t.string :year
      t.string :slogan
      t.string :caractere
      t.string :accord
      t.float :prix_ttc_public
      t.string :reduction
      t.string :tempservice
      t.string :region
      t.string :cepage
      t.string :type
      t.string :typologie
      t.string :appellation

      t.timestamps
    end
  end
end
