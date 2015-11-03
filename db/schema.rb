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

ActiveRecord::Schema.define(version: 20151103011144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sales", force: :cascade do |t|
    t.date     "date"
    t.string   "location"
    t.string   "family"
    t.decimal  "starting_bank"
    t.decimal  "ending_bank"
    t.integer  "number_of_cups"
    t.decimal  "sales_tax"
    t.decimal  "farmers_market_fee"
    t.decimal  "cost_of_lemonade"
    t.decimal  "cost_of_ice_tea"
    t.decimal  "cost_of_cups"
    t.decimal  "misc"
    t.decimal  "insurance_fee"
    t.decimal  "stand_fee"
    t.decimal  "commission_fee"
    t.decimal  "starting_tips"
    t.decimal  "ending_tips"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
