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

ActiveRecord::Schema.define(version: 20150831153049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features_properties", id: false, force: :cascade do |t|
    t.integer "feature_id"
    t.integer "property_id"
  end

  add_index "features_properties", ["feature_id", "property_id"], name: "features_properties_index", unique: true, using: :btree

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "mls_listing_number"
    t.string   "mls_name"
    t.string   "mls_sources"
    t.date     "mls_date_added"
    t.date     "mls_date_modified"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "unit_number"
    t.string   "city"
    t.integer  "zip"
    t.string   "location"
    t.string   "full_address"
    t.string   "property_type"
    t.text     "last_update_description"
    t.text     "short_last_update_description"
    t.string   "status"
    t.decimal  "current_list_price"
    t.decimal  "sold_price"
    t.decimal  "sqft"
    t.decimal  "sqft_price"
    t.decimal  "lot_sqft"
    t.integer  "year_built"
    t.string   "listing_office"
    t.string   "condition"
    t.integer  "bedrooms"
    t.decimal  "half_bathrooms"
    t.integer  "full_bathrooms"
    t.integer  "favorited"
    t.integer  "fake_favorited"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "featured_file_name"
    t.string   "featured_content_type"
    t.integer  "featured_file_size"
    t.datetime "featured_updated_at"
    t.integer  "image_id"
    t.text     "description"
    t.text     "short_description"
    t.integer  "garage_size"
    t.boolean  "has_garage"
  end

  add_index "properties", ["full_address"], name: "index_properties_on_full_address", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "phone"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
