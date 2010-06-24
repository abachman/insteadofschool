# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100624014229) do

  create_table "audiences", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "date"
    t.integer  "place_id"
    t.integer  "audience_id"
    t.integer  "organization_id"
    t.decimal  "cost",            :precision => 21, :scale => 5
    t.string   "name"
    t.text     "description"
    t.string   "reference"
    t.string   "audience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "address_street"
    t.string   "address_street_two"
    t.string   "address_zip"
    t.text     "description"
    t.integer  "audience_id"
    t.decimal  "cost",               :precision => 21, :scale => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
