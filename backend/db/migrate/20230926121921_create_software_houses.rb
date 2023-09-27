class CreateSoftwareHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :software_houses do |t|
      t.string :name, null: false
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
