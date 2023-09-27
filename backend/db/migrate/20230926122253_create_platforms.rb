class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.string :description

      t.timestamps
    end
  end
end
