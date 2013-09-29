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

ActiveRecord::Schema.define(version: 20130831151039) do

  create_table "albums", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "photos_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["user_id"], name: "index_albums_on_user_id"

  create_table "comments", force: true do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "photo_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["photo_id"], name: "index_comments_on_photo_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "photos", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "path"
    t.integer  "note",           default: 0
    t.string   "tags"
    t.date     "shot_date"
    t.integer  "album_id"
    t.integer  "comments_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id"

  create_table "users", force: true do |t|
    t.string   "pseudo"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_admin",       default: false
    t.integer  "comments_count"
    t.integer  "albums_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
