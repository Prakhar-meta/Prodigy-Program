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

ActiveRecord::Schema.define(version: 20250420150435) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.string "time"
    t.integer "category_id"
    t.index ["category_id"], name: "index_activities_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "day_wise_activities", force: :cascade do |t|
    t.date "day"
    t.integer "activity_id"
    t.index ["activity_id"], name: "index_day_wise_activities_on_activity_id"
  end

  create_table "user_activity_progresses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "activity_id"
    t.string "status"
    t.index ["activity_id"], name: "index_user_activity_progresses_on_activity_id"
    t.index ["user_id"], name: "index_user_activity_progresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
