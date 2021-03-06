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

ActiveRecord::Schema.define(version: 20160220005808) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.integer  "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "pick_up_date"
    t.date     "scheduled_return_date"
    t.date     "actual_return_date"
    t.integer  "odometer_reading"
    t.decimal  "fuel_level"
    t.decimal  "fine"
    t.integer  "vehicle_id"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "dob"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "vehicle_type"
    t.string   "registration"
    t.string   "fuel_type"
    t.string   "transmission"
    t.integer  "passengers"
    t.string   "model"
    t.decimal  "daily_price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
