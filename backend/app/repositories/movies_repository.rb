# frozen_string_literal: true

class MoviesRepository < ActiveRecord::Base
  self.table_name = 'movies'

  validates_presence_of :director, :writer, :title, :producer, :cast, :year
end
