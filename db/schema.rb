# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2015_04_10_061410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_ads", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url"
  end

  create_table "admin_banners", id: :serial, force: :cascade do |t|
    t.string "url"
  end

  create_table "admin_csv_calendars", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_lists", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url", default: "", null: false
    t.string "title", default: "", null: false
  end

  create_table "admin_sources", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "imported_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "reimport"
  end

  create_table "artists", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.string "location"
    t.string "type", default: "Event", null: false
    t.integer "price"
    t.string "referrer"
    t.integer "venue_id"
    t.integer "event_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "artist_id"
    t.integer "referrer_id"
    t.boolean "recurring", default: false
    t.boolean "gcal"
    t.string "uid"
    t.boolean "authorized"
    t.string "day_of_week", default: "", null: false
    t.integer "list_id"
    t.string "title"
    t.datetime "start_time"
    t.string "url"
    t.integer "duplicate_of_id"
    t.datetime "end_time"
    t.string "rrule"
    t.text "venue_details"
    t.integer "organization_id"
    t.boolean "locked", default: false
    t.integer "source_id"
    t.index ["day_of_week"], name: "index_events_on_day_of_week"
    t.index ["uid"], name: "index_events_on_uid", unique: true
  end

  create_table "referrers", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "imported_at"
    t.boolean "reimport"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "event_type_id"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "taggable_id", null: false
    t.string "taggable_type", null: false
    t.integer "tagger_id"
    t.string "tagger_type"
    t.string "context"
    t.datetime "created_at"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "user_groups", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "role_id"
    t.string "name"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin", default: false
    t.string "provider"
    t.string "uid"
    t.integer "user_group_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "title"
    t.text "description"
    t.string "url"
    t.string "street_address"
    t.string "locality"
    t.integer "duplicate_of_id"
    t.string "region"
    t.string "postal_code"
    t.string "country"
    t.decimal "latitude", precision: 7, scale: 4
    t.decimal "longitude", precision: 7, scale: 4
    t.string "email"
    t.string "telephone"
    t.boolean "closed", default: false
    t.boolean "wifi", default: false
    t.text "access_notes"
    t.integer "events_count"
    t.integer "source_id"
  end

  create_table "versions", id: :serial, force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
