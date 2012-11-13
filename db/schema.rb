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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121028202559) do

  create_table "pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "unit_of_measure_conversions", :force => true do |t|
    t.decimal  "conversion_factor"
    t.string   "item_no"
    t.date     "from_effective_date"
    t.date     "to_effective_date"
    t.text     "comments"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "primary_uom_id"
    t.integer  "secondary_uom_id"
  end

  create_table "unit_of_measures", :force => true do |t|
    t.string   "uom"
    t.string   "uom_desc"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
