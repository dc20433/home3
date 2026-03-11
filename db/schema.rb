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

ActiveRecord::Schema[8.0].define(version: 2026_03_11_205942) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "charts", force: :cascade do |t|
    t.bigint "regi_id", null: false
    t.string "t_date"
    t.text "subj"
    t.text "obj"
    t.text "assess"
    t.text "plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regi_id"], name: "index_charts_on_regi_id"
  end

  create_table "filings", force: :cascade do |t|
    t.bigint "regi_id", null: false
    t.string "image"
    t.text "describe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regi_id"], name: "index_filings_on_regi_id"
  end

  create_table "patients", force: :cascade do |t|
    t.bigint "regi_id", null: false
    t.date "v_date"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "cell"
    t.string "home"
    t.string "work"
    t.string "email"
    t.string "height"
    t.string "weight"
    t.string "m_stat"
    t.string "occup"
    t.string "company"
    t.string "referred"
    t.string "comp1"
    t.string "comp2"
    t.string "comp3"
    t.string "d_onset"
    t.string "pain_scale"
    t.string "diag_given"
    t.string "aq_b4"
    t.string "di_list"
    t.string "o_dis"
    t.string "last_prd"
    t.string "preg"
    t.string "preg_wks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regi_id"], name: "index_patients_on_regi_id"
  end

  create_table "regis", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "init"
    t.string "gender"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "charts", "regis"
  add_foreign_key "filings", "regis"
  add_foreign_key "patients", "regis"
end
