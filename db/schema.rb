# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_08_172758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_parts", force: :cascade do |t|
    t.jsonb "some_car_part_attribute", default: {}
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_parts_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.jsonb "some_car_attribute", default: {}
    t.jsonb "some_other_car_attribute", default: {}
    t.boolean "some_third_car_attribute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_lots", force: :cascade do |t|
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_parking_lots_on_car_id"
  end

end
