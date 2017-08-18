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

ActiveRecord::Schema.define(version: 20170818174123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "balloons", force: :cascade do |t|
    t.string "content"
    t.string "link"
    t.string "balloon_img"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["post_id"], name: "index_balloons_on_post_id"
  end

  create_table "editions", force: :cascade do |t|
    t.datetime "date"
    t.string "greeting"
    t.string "farewell"
    t.string "greeting_img"
    t.string "farewell_img"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_editions_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "headline"
    t.string "option_more"
    t.string "option_next"
    t.string "post_img"
    t.bigint "edition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_posts_on_edition_id"
  end

  create_table "read_posts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_read_posts_on_post_id"
    t.index ["user_id"], name: "index_read_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.boolean "influencer"
    t.string "category"
    t.string "user_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "banner"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "balloons", "posts"
  add_foreign_key "editions", "users"
  add_foreign_key "posts", "editions"
  add_foreign_key "read_posts", "posts"
  add_foreign_key "read_posts", "users"
end
