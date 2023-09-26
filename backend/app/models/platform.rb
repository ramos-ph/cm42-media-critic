class Platform < ApplicationRecord
  validates_presence_of :name, :description, :year
end
