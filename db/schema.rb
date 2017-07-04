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

ActiveRecord::Schema.define(version: 20170704070130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "plane_type"
    t.integer "rows"
    t.integer "columns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", id: :serial, force: :cascade do |t|
    t.string "flight_no"
    t.date "departure_date"
    t.string "from"
    t.string "to"
    t.integer "airplane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "flight_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
