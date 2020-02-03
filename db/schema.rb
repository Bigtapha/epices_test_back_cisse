# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_03_152213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "day_productions", force: :cascade do |t|
    t.string "day"
    t.integer "energy_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hourly_productions", force: :cascade do |t|
    t.integer "identifier"
    t.string "date_time"
    t.integer "energy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "day"
    t.bigint "day_production_id"
    t.index ["day_production_id"], name: "index_hourly_productions_on_day_production_id"
  end

  create_table "onduleurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
