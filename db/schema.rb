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

ActiveRecord::Schema.define(:version => 20120625050708) do

  create_table "guests", :force => true do |t|
    t.string   "name"
    t.boolean  "f1"
    t.boolean  "s1"
    t.boolean  "s2"
    t.boolean  "s3"
    t.boolean  "s4"
    t.boolean  "ff1"
    t.boolean  "fs1"
    t.boolean  "fs2"
    t.boolean  "fs3"
    t.boolean  "fs4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "veg"
    t.boolean  "w2"
    t.boolean  "w3"
    t.boolean  "t1"
    t.boolean  "t2"
    t.boolean  "t3"
    t.boolean  "f2"
    t.boolean  "f3"
    t.boolean  "fw1"
    t.boolean  "fw2"
    t.boolean  "fw3"
    t.boolean  "ft1"
    t.boolean  "ft2"
    t.boolean  "ft3"
    t.boolean  "ff3"
    t.boolean  "ff2"
  end

  create_table "statics", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
