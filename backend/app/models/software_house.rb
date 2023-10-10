class SoftwareHouse < ApplicationRecord
  validates_presence_of :name

  has_and_belongs_to_many :developed_games,
                          join_table: "games_developers",
                          class_name: "Game",
                          foreign_key: "software_house_id"

  has_and_belongs_to_many :published_games,
                          join_table: "games_publishers",
                          class_name: "Game",
                          foreign_key: "software_house_id"
end
