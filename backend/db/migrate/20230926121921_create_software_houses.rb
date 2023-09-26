class CreateSoftwareHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :software_houses do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :address

      t.timestamps
    end
  end
end
