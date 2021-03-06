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

ActiveRecord::Schema.define(version: 20170406211221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hub_id"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hub_id"], name: "index_histories_on_hub_id", using: :btree
    t.index ["user_id"], name: "index_histories_on_user_id", using: :btree
  end

  create_table "hubs", force: :cascade do |t|
    t.string   "name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "description"
    t.string   "location"
    t.string   "image_url"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "address"
  end

  create_table "personalities", force: :cascade do |t|
    t.decimal  "attr_a"
    t.decimal  "attr_b"
    t.decimal  "attr_c"
    t.decimal  "attr_d"
    t.decimal  "attr_e"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_personalities_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.integer  "hub_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hub_id"], name: "index_posts_on_hub_id", using: :btree
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "histories", "hubs"
  add_foreign_key "histories", "users"
  add_foreign_key "posts", "hubs"
  add_foreign_key "posts", "users"
end
