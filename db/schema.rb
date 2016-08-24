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

ActiveRecord::Schema.define(version: 20160824172214) do

  create_table "authors", force: :cascade do |t|
    t.integer  "pasport_number"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customs", force: :cascade do |t|
    t.integer  "pasport_number"
    t.string   "name"
    t.integer  "tel_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "exhibitions", force: :cascade do |t|
    t.string   "location"
    t.date     "date"
    t.time     "time"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "custom_id"
    t.integer  "price"
    t.integer  "personnel_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["custom_id"], name: "index_orders_on_custom_id"
    t.index ["personnel_id"], name: "index_orders_on_personnel_id"
    t.index ["picture_id"], name: "index_orders_on_picture_id"
  end

  create_table "personnels", force: :cascade do |t|
    t.integer  "pasport_number"
    t.string   "name"
    t.string   "position"
    t.integer  "pay"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.date     "date"
    t.integer  "price"
    t.integer  "author_id"
    t.integer  "genre_id"
    t.integer  "exhibition_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_id"], name: "index_pictures_on_author_id"
    t.index ["exhibition_id"], name: "index_pictures_on_exhibition_id"
    t.index ["genre_id"], name: "index_pictures_on_genre_id"
  end

end
