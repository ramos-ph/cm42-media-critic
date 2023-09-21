class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.text :synopsis, null: false
      t.integer :release_year, null: false
      t.boolean :is_indie

      t.timestamps
    end

    create_join_table :games, :developers
    create_join_table :games, :genres
    create_join_table :games, :platforms
    create_join_table :games, :publishers, column_options: { null: true }
  end
end
