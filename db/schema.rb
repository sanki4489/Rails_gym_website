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

ActiveRecord::Schema.define(version: 2021_11_28_125717) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "address"
    t.integer "weight"
    t.string "level"
    t.string "sex"
    t.integer "height"
    t.integer "age"
    t.string "goals"
    t.string "email"
    t.string "timings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "speciality"
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programs", force: :cascade do |t|
    t.integer "client_id"
    t.string "name"
    t.integer "duration"
    t.string "instructor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_programs_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "contactNumber"
    t.string "plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
