class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :year, null: false

      t.timestamps
    end

    create_join_table :games, :platforms      , table_name: :games_platforms
    create_join_table :games, :software_houses, table_name: :games_developers
    create_join_table :games, :software_houses, table_name: :games_publishers
    create_join_table :games, :genres         , table_name: :games_genres
  end
end
