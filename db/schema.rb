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

ActiveRecord::Schema.define(version: 2019_02_22_024706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_schools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_happenings", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "happening_id"
    t.bigint "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_happenings_on_event_id"
    t.index ["happening_id"], name: "index_event_happenings_on_happening_id"
    t.index ["user_id"], name: "index_event_happenings_on_user_id"
  end

  create_table "event_repeats", force: :cascade do |t|
    t.bigint "event_id"
    t.integer "days_of_week", array: true
    t.integer "weeks_of_month", array: true
    t.integer "months_of_year", array: true
    t.datetime "repeat_start_date"
    t.datetime "repeat_end_date"
    t.integer "number_of_repeats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["days_of_week"], name: "index_event_repeats_on_days_of_week", using: :gin
    t.index ["event_id"], name: "index_event_repeats_on_event_id"
    t.index ["months_of_year"], name: "index_event_repeats_on_months_of_year", using: :gin
    t.index ["weeks_of_month"], name: "index_event_repeats_on_weeks_of_month", using: :gin
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "img"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "happening_interests", force: :cascade do |t|
    t.bigint "happening_id"
    t.bigint "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["happening_id"], name: "index_happening_interests_on_happening_id"
    t.index ["interest_id"], name: "index_happening_interests_on_interest_id"
  end

  create_table "happenings", force: :cascade do |t|
    t.bigint "user_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_happenings_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_code_schools", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "code_school_id"
    t.string "course"
    t.string "campus"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_school_id"], name: "index_user_code_schools_on_code_school_id"
    t.index ["user_id"], name: "index_user_code_schools_on_user_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.integer "quantity"
    t.text "working_on"
    t.string "share_tech"
    t.string "teach_tech"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "user_interests", force: :cascade do |t|
    t.bigint "interest_id"
    t.bigint "user_id"
    t.text "experience"
    t.integer "expertise"
    t.boolean "want_to_teach"
    t.boolean "want_to_learn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_user_interests_on_interest_id"
    t.index ["user_id"], name: "index_user_interests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "username"
    t.string "image"
    t.string "email"
    t.boolean "admin"
    t.string "slack_handle"
    t.string "phone"
    t.string "github_handle"
    t.text "bio"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "event_happenings", "events"
  add_foreign_key "event_happenings", "happenings"
  add_foreign_key "event_happenings", "users"
  add_foreign_key "event_repeats", "events"
  add_foreign_key "happening_interests", "happenings"
  add_foreign_key "happening_interests", "interests"
  add_foreign_key "happenings", "users"
  add_foreign_key "user_code_schools", "code_schools"
  add_foreign_key "user_code_schools", "users"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
end
