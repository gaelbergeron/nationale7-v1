# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160208131916) do

  create_table "car_clients", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "client_id"
    t.string   "position"
    t.integer  "inspector_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "car_options", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "status"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "engine"
    t.string   "version_trim"
    t.string   "body_type"
    t.string   "fuel_type"
    t.string   "transmission"
    t.integer  "number_of_doors"
    t.integer  "number_of_seats"
    t.integer  "mileage"
    t.string   "vin_number"
    t.string   "exterior_color"
    t.string   "interior_type"
    t.string   "interior_color"
    t.string   "manufacturer_warranty"
    t.integer  "engine_size"
    t.integer  "horsepower"
    t.integer  "fiscal_horsepower"
    t.integer  "number_of_cylinders"
    t.integer  "number_of_valves"
    t.integer  "combined_l_100km"
    t.integer  "co2_emissions"
    t.datetime "date_of_inspection"
    t.integer  "inspector_id"
    t.integer  "vroom_price"
    t.integer  "dealer_price"
    t.integer  "transaction_price"
    t.text     "inspector_comment"
    t.text     "owner_comment"
    t.string   "location_city"
    t.string   "location_department"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "address"
    t.string   "city"
    t.integer  "zip_code"
    t.datetime "birth_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inspectors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture_url"
    t.string   "location_city"
    t.string   "location_department"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "description"
    t.string   "comment"
    t.string   "picture_url"
    t.string   "type"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
