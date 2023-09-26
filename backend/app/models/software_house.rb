class SoftwareHouse < ApplicationRecord
  validates_presence_of :name, :description

  has_and_belongs_to_many :games_developers,
                          join_table: "games_developers",
                          class_name: "Game",
                          foreign_key: "developer_id"

  has_and_belongs_to_many :games_publishers,
                          join_table: "games_publishers",
                          class_name: "Game",
                          foreign_key: "publisher_id"
end
