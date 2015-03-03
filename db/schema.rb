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

ActiveRecord::Schema.define(version: 20150224105208) do

  create_table "pokememos", force: true do |t|
    t.string   "name"
    t.string   "item"
    t.string   "ability"
    t.string   "move1"
    t.string   "move2"
    t.string   "move3"
    t.string   "move4"
    t.integer  "H"
    t.integer  "A"
    t.integer  "B"
    t.integer  "C"
    t.integer  "D"
    t.integer  "S"
    t.string   "nature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
