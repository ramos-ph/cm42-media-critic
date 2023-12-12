class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string  :director
      t.string  :writer
      t.string  :title
      t.string  :producer
      t.string  :production_company
      t.string  :cast, array: true
      t.integer :year

      t.timestamps
    end
  end
end
