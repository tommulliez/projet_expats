class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.string :message
      t.string :country

      t.timestamps
    end
  end
end
