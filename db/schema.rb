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

ActiveRecord::Schema.define(version: 2019_07_04_113045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_records", force: :cascade do |t|
    t.bigint "space_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_booking_records_on_space_id"
    t.index ["user_id"], name: "index_booking_records_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "space_availability_timings", force: :cascade do |t|
    t.time "start_time"
    t.time "end_time"
    t.bigint "space_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_space_availability_timings_on_space_id"
    t.index ["user_id"], name: "index_space_availability_timings_on_user_id"
  end

  create_table "space_available_days", force: :cascade do |t|
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.boolean "sunday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "space_images", force: :cascade do |t|
    t.binary "image"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_space_images_on_space_id"
  end

  create_table "space_locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_space_locations_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "space_address"
    t.string "size"
    t.string "dimensions"
    t.string "nearby_landmark"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_toilets"
    t.index ["user_id"], name: "index_spaces_on_user_id"
  end

  create_table "user_details", force: :cascade do |t|
    t.string "fist_name"
    t.string "last_name"
    t.string "education_details"
    t.string "about_user"
    t.string "city"
    t.string "college"
    t.integer "phone_number"
    t.integer "mobile_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_details_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.bigint "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "booking_records", "spaces"
  add_foreign_key "booking_records", "users"
  add_foreign_key "space_availability_timings", "spaces"
  add_foreign_key "space_availability_timings", "users"
  add_foreign_key "space_images", "spaces"
  add_foreign_key "space_locations", "spaces"
  add_foreign_key "spaces", "users"
  add_foreign_key "user_details", "users"
  add_foreign_key "users", "user_types"
end
