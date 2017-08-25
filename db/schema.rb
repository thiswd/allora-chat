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

ActiveRecord::Schema.define(version: 20170824064932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "balloons", force: :cascade do |t|
    t.text "content"
    t.string "link"
    t.string "balloon_img"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.string "weather"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "balloon_gif"
    t.string "youtube"
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
    t.string "greeting_gif"
    t.string "farewell_gif"
    t.index ["user_id"], name: "index_editions_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "posts", force: :cascade do |t|
    t.string "headline"
    t.string "option_more"
    t.string "option_next"
    t.string "post_img"
    t.bigint "edition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post_gif"
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
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.string "position"
    t.text "description"
    t.string "slug"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

  add_foreign_key "balloons", "posts"
  add_foreign_key "editions", "users"
  add_foreign_key "posts", "editions"
  add_foreign_key "read_posts", "posts"
  add_foreign_key "read_posts", "users"
end
