# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_03_213350) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "client_account_id"
    t.integer "office_id"
    t.time "probable_start_time"
    t.time "actual_end_time"
    t.integer "appointment_status_id"
    t.date "appointment_taken_date"
    t.integer "app_booking_channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_accounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "contact_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_reviews", force: :cascade do |t|
    t.integer "user_account_id"
    t.integer "doctor_id"
    t.string "is_review_anonymous"
    t.integer "wait_time_rating"
    t.integer "bedside_manner_rating"
    t.integer "overall_rating"
    t.string "review"
    t.string "is_doctor_recommended"
    t.date "review_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "doctor_specializations", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "professional_statement"
    t.date "practicing_from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_affiliations", force: :cascade do |t|
    t.integer "doctor_id"
    t.string "hospital_name"
    t.string "city"
    t.string "country"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "in_network_insurances", force: :cascade do |t|
    t.string "insurance_name"
    t.integer "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_doctor_availabilities", force: :cascade do |t|
    t.integer "office_id"
    t.string "day_of_week"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.string "is_available"
    t.string "reason_of_unavailability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "hospital_affiliation_id"
    t.integer "time_slot_per_client_in_min"
    t.integer "first_consultation_fee"
    t.integer "followup_consultation_fee"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "doctor_id"
    t.string "qualification_name"
    t.string "institute_name"
    t.date "procurement_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string "specialization_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
