class Platform < ApplicationRecord
  validates_presence_of :name, :year

  has_and_belongs_to_many :games, join_table: "games_platforms"
end
