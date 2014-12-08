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

ActiveRecord::Schema.define(version: 20140312161135) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "api_clients", force: true do |t|
    t.string   "api_key"
    t.string   "client_name"
    t.integer  "call_limit_day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "client_id"
  end

  create_table "artistassignments", force: true do |t|
    t.integer  "artist_id",     null: false
    t.integer  "unit_id",       null: false
    t.integer  "artisttype_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", force: true do |t|
    t.string   "tbugartistid",                null: false
    t.string   "fullname",                    null: false
    t.string   "lastname",                    null: false
    t.text     "description"
    t.boolean  "isactive",     default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artisttypes", force: true do |t|
    t.string   "name",                       null: false
    t.text     "description"
    t.boolean  "isactive",    default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bad_queries", force: true do |t|
    t.string   "name"
    t.string   "medium"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_units", force: true do |t|
    t.integer  "api_client_id"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ip_addresses", force: true do |t|
    t.string   "ip"
    t.string   "country_code"
    t.string   "country_name"
    t.string   "region_code"
    t.string   "region_name"
    t.string   "city"
    t.string   "zipcode"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "metro_code"
    t.string   "areacode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "valid_ip",     default: true
  end

  add_index "ip_addresses", ["ip"], name: "index_ip_addresses_on_ip", unique: true

  create_table "languageassignments", force: true do |t|
    t.integer  "language_id", null: false
    t.integer  "unit_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name",       null: false
    t.string   "ISO639_1"
    t.string   "ISO639_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "name",                       null: false
    t.text     "description"
    t.boolean  "isactive",    default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mediumassignments", force: true do |t|
    t.integer  "medium_id",  null: false
    t.integer  "unit_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mediumassignments", ["unit_id", "medium_id"], name: "index_mediumassignments_on_unit_id_and_medium_id"

  create_table "publisherassignments", force: true do |t|
    t.integer  "publisher_id", null: false
    t.integer  "unit_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", force: true do |t|
    t.string   "tbugpublisherid",                null: false
    t.string   "name",                           null: false
    t.string   "website"
    t.text     "description"
    t.boolean  "isactive",        default: true, null: false
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "torchwordassignments", force: true do |t|
    t.integer  "torchword_id",                     null: false
    t.integer  "torchwordtype_id",                 null: false
    t.integer  "unit_id",                          null: false
    t.boolean  "isdominant",       default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source"
  end

  create_table "torchwords", force: true do |t|
    t.integer  "torchwordtype_id",                null: false
    t.string   "name",                            null: false
    t.text     "description"
    t.boolean  "isactive",         default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "torchwordtypes", force: true do |t|
    t.string   "name",                       null: false
    t.text     "description"
    t.float    "weight",      default: 1.0,  null: false
    t.boolean  "isactive",    default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "tbugunitid",                                   null: false
    t.string   "name",                                         null: false
    t.text     "description"
    t.boolean  "isactive",                default: false,      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.text     "torchword_index"
    t.boolean  "tagging_issue",           default: false
    t.integer  "torchword_count",         default: 0
    t.integer  "published_year"
    t.string   "artist_names",            default: "--- []\n"
    t.string   "series"
    t.string   "subtitle"
    t.text     "similar_books"
    t.text     "similar_movies"
    t.text     "similar_tv"
    t.boolean  "recommendations_updated", default: false
  end

  add_index "units", ["name"], name: "index_units_on_name"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_type",           default: 0,  null: false
    t.string   "tbuguserid"
    t.string   "amazon_tag"
    t.string   "stripe_customer_id"
    t.string   "website"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "widget_templates", force: true do |t|
    t.text     "settings"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "widgets", force: true do |t|
    t.integer  "user_id",                               null: false
    t.integer  "unit_id",                               null: false
    t.string   "tbugwidgetid",                          null: false
    t.text     "click_history"
    t.text     "view_history"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "new_click_ips"
    t.text     "similar_books"
    t.text     "similar_movies"
    t.boolean  "facebook",              default: true,  null: false
    t.boolean  "twitter",               default: true,  null: false
    t.boolean  "pinterest",             default: true,  null: false
    t.boolean  "recommend_books",       default: true,  null: false
    t.boolean  "recommend_movies",      default: true,  null: false
    t.boolean  "display_title",         default: true,  null: false
    t.boolean  "display_artist",        default: false, null: false
    t.boolean  "display_image",         default: false, null: false
    t.boolean  "taste_matcher",         default: true,  null: false
    t.boolean  "friend_matcher",        default: true,  null: false
    t.text     "unit_details"
    t.text     "video_rec_details"
    t.text     "book_rec_details"
    t.integer  "access_count",          default: 0
    t.text     "matcher_status_ledger"
    t.string   "amazon_tag"
    t.text     "new_view_ips"
    t.text     "share_history"
    t.text     "new_share_ips"
    t.text     "similar_tv_shows"
    t.boolean  "recommend_tv_shows",    default: true,  null: false
    t.text     "tv_show_rec_details"
    t.text     "geo_engagement_stats"
    t.text     "seen_click_ips"
    t.text     "seen_share_ips"
    t.text     "seen_view_ips"
  end

end
