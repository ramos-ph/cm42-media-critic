class Game < ApplicationRecord
  validates_presence_of :title, :description, :year

  has_and_belongs_to_many :platforms,        join_table: "games_platforms"
  has_and_belongs_to_many :genres,           join_table: "games_genres"

  has_and_belongs_to_many :games_developers,
                          join_table: "games_developers",
                          class_name: "SofwareHouse",
                          foreign_key: "game_id"

  has_and_belongs_to_many :games_publishers,
                          join_table: "games_publishers",
                          class_name: "SofwareHouse",
                          foreign_key: "game_id"
end
