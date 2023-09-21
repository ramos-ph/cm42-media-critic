# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_21_204114) do
  create_table "developers", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_indie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers_games", id: false, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "developer_id", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title", null: false
    t.text "synopsis", null: false
    t.integer "release_year", null: false
    t.boolean "is_indie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_genres", id: false, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "genre_id", null: false
  end

  create_table "games_platforms", id: false, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "platform_id", null: false
  end

  create_table "games_publishers", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "publisher_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
