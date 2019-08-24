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

ActiveRecord::Schema.define(version: 2019_08_23_204319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "booking_records", force: :cascade do |t|
    t.bigint "space_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "booking_time"
    t.time "start_time"
    t.time "end_time"
    t.date "booking_date"
    t.index ["space_id"], name: "index_booking_records_on_space_id"
    t.index ["user_id"], name: "index_booking_records_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_subscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "time_wallet"
    t.bigint "membership_plan_id"
    t.string "stripe_token"
    t.index ["membership_plan_id"], name: "index_member_subscriptions_on_membership_plan_id"
    t.index ["user_id"], name: "index_member_subscriptions_on_user_id"
  end

  create_table "membership_plans", force: :cascade do |t|
    t.string "plan_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "time_alloted"
    t.float "price"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "room_messages", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "user_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_messages_on_room_id"
    t.index ["user_id"], name: "index_room_messages_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_rooms_on_name", unique: true
  end

  create_table "searchings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "space_addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "pincode"
    t.string "state"
    t.float "latitude"
    t.float "longitude"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "house_number"
    t.index ["space_id"], name: "index_space_addresses_on_space_id"
  end

  create_table "space_availability_timings", force: :cascade do |t|
    t.time "start_time"
    t.time "end_time"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "day_id"
    t.index ["day_id"], name: "index_space_availability_timings_on_day_id"
    t.index ["space_id"], name: "index_space_availability_timings_on_space_id"
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
    t.bigint "space_id"
    t.index ["space_id"], name: "index_space_available_days_on_space_id"
  end

  create_table "space_images", force: :cascade do |t|
    t.binary "image"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_space_images_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "dimensions"
    t.string "nearby_landmark"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "floor_number"
    t.integer "number_of_toilets"
    t.float "size"
    t.string "space_name"
    t.datetime "deleted_at"
    t.index ["user_id"], name: "index_spaces_on_user_id"
  end

  create_table "user_address_types", force: :cascade do |t|
    t.string "address_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_addresses", force: :cascade do |t|
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "pincode"
    t.string "state"
    t.string "country"
    t.bigint "user_address_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_address_type_id"], name: "index_user_addresses_on_user_address_type_id"
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "education_details"
    t.string "about_user"
    t.string "city"
    t.string "college"
    t.string "phone_number"
    t.string "mobile_number"
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
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string "auth_token"
    t.string "signup_token"
    t.datetime "signup_at"
    t.boolean "signup_active", default: false
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "booking_records", "spaces"
  add_foreign_key "booking_records", "users"
  add_foreign_key "member_subscriptions", "membership_plans"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "room_messages", "rooms"
  add_foreign_key "room_messages", "users"
  add_foreign_key "space_addresses", "spaces"
  add_foreign_key "space_availability_timings", "days"
  add_foreign_key "space_availability_timings", "spaces"
  add_foreign_key "space_available_days", "spaces"
  add_foreign_key "space_images", "spaces"
  add_foreign_key "spaces", "users"
  add_foreign_key "user_addresses", "user_address_types"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_details", "users"
  add_foreign_key "users", "user_types"
end
