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

ActiveRecord::Schema.define(version: 20140902135037) do

  create_table "contactpeople", force: true do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "fax"
    t.string   "mail"
    t.integer  "customer_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.integer  "zip_code"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "apl"
    t.string   "ext"
    t.integer  "customer_id"
    t.integer  "contactperson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "w_numbers", force: true do |t|
    t.string   "number"
    t.string   "darwing_number"
    t.string   "year"
    t.string   "standard"
    t.string   "tag_number"
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
