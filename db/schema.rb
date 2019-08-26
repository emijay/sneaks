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

ActiveRecord::Schema.define(version: 2019_08_23_172312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.text "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoes", force: :cascade do |t|
    t.text "name"
    t.text "color"
    t.text "release_year"
    t.text "style"
    t.text "description"
    t.integer "cost_price"
    t.text "first_image_url"
    t.text "second_image_url"
    t.text "third_image_url"
    t.text "fourth_image_url"
    t.bigint "brand_id"
    t.bigint "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["brand_id"], name: "index_shoes_on_brand_id"
    t.index ["size_id"], name: "index_shoes_on_size_id"
    t.index ["user_id"], name: "index_shoes_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.text "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upcoming_shoes", force: :cascade do |t|
    t.text "name"
    t.text "image_url"
    t.text "release_date"
    t.integer "retail_price"
    t.bigint "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_upcoming_shoes_on_brand_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image_url"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "shoes", "users"
end