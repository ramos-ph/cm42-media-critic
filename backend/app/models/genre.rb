class Genre < ApplicationRecord
  validates_presence_of :name

  has_and_belongs_to_many :games, join_table: "games_genres"
end
