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

ActiveRecord::Schema.define(version: 20170502200100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "content"
    t.string   "topic"
    t.integer  "price"
    t.string   "type_of_event"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_calendars_on_user_id", using: :btree
  end

  create_table "causes", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "cover_image"
    t.string   "tagline"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "term"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",         null: false
    t.date     "date",          null: false
    t.time     "start_time",    null: false
    t.time     "end_time"
    t.text     "content",       null: false
    t.string   "topic",         null: false
    t.string   "price"
    t.string   "type_of_event", null: false
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "favorite_charities", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "city",       null: false
    t.string   "url",        null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorite_charities_on_user_id", using: :btree
  end

  create_table "informed_favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "animals"
    t.boolean  "bullying"
    t.boolean  "disasters"
    t.boolean  "discrimination"
    t.boolean  "education"
    t.boolean  "environment"
    t.boolean  "homelessness"
    t.boolean  "mental_health"
    t.boolean  "physical_health"
    t.boolean  "poverty"
    t.boolean  "relationships"
    t.boolean  "sex"
    t.boolean  "violence"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_informed_favorites_on_user_id", using: :btree
  end

  create_table "involved_favorites", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "url",        null: false
    t.string   "tagline",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_involved_favorites_on_user_id", using: :btree
  end

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
    t.string   "name",                                null: false
    t.string   "username",                            null: false
    t.integer  "zip_code",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "calendars", "users"
  add_foreign_key "events", "users"
  add_foreign_key "favorite_charities", "users"
  add_foreign_key "informed_favorites", "users"
  add_foreign_key "involved_favorites", "users"
end
