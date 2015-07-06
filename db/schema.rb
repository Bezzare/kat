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

ActiveRecord::Schema.define(version: 20150706060433) do

  create_table "movies", force: :cascade do |t|
    t.string   "category",   default: "movie"
    t.string   "link"
    t.string   "name"
    t.string   "size"
    t.integer  "files"
    t.string   "age"
    t.integer  "seed"
    t.integer  "leech"
    t.decimal  "imdb"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "movies", ["age"], name: "index_movies_on_age"
  add_index "movies", ["imdb"], name: "index_movies_on_imdb"
  add_index "movies", ["leech"], name: "index_movies_on_leech"
  add_index "movies", ["seed"], name: "index_movies_on_seed"
  add_index "movies", ["size"], name: "index_movies_on_size"

end