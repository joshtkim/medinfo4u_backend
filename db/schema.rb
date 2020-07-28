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

ActiveRecord::Schema.define(version: 2020_07_26_014840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "visitor_symptom"
    t.string "observation"
    t.string "note"
    t.string "public"
    t.bigint "doctor_id", null: false
    t.bigint "nurse_id", null: false
    t.bigint "visitor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["nurse_id"], name: "index_appointments_on_nurse_id"
    t.index ["visitor_id"], name: "index_appointments_on_visitor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "dob"
    t.integer "age"
    t.string "phone"
    t.string "ext"
    t.string "email"
    t.string "language"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "dob"
    t.integer "age"
    t.string "phone"
    t.string "ext"
    t.string "email"
    t.string "language"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "location"
    t.string "visitor_symptom"
    t.string "observation"
    t.string "note"
    t.string "public"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_symptoms_on_appointment_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "dob"
    t.integer "age"
    t.string "phone"
    t.string "email"
    t.string "language"
    t.string "healthcare"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "nurses"
  add_foreign_key "appointments", "visitors"
  add_foreign_key "symptoms", "appointments"
end
