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

ActiveRecord::Schema.define(version: 2022_05_27_022839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.integer "episode_number"
    t.string "title"
    t.text "summary"
    t.bigint "tv_show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_show_id"], name: "index_episodes_on_tv_show_id"
  end

  create_table "film_locations", force: :cascade do |t|
    t.string "name"
    t.boolean "indoor", default: false
    t.bigint "tv_show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_show_id"], name: "index_film_locations_on_tv_show_id"
  end

  create_table "nationalities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "flag_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "name", null: false
    t.text "summary"
    t.datetime "release_date"
    t.float "rating", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "nationality_id", null: false
    t.index ["nationality_id"], name: "index_tv_shows_on_nationality_id"
  end

  add_foreign_key "episodes", "tv_shows"
  add_foreign_key "film_locations", "tv_shows"
  add_foreign_key "tv_shows", "nationalities"
end
