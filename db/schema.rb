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

ActiveRecord::Schema.define(version: 2020_03_19_140148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_districts_on_project_id"
    t.index ["user_id"], name: "index_districts_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "assignee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee_id"], name: "index_projects_on_assignee_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "mobile"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "water_liter_delivereds", force: :cascade do |t|
    t.float "quantity"
    t.date "date"
    t.bigint "user_id", null: false
    t.bigint "district_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_water_liter_delivereds_on_district_id"
    t.index ["user_id"], name: "index_water_liter_delivereds_on_user_id"
  end

  add_foreign_key "districts", "projects"
  add_foreign_key "districts", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "projects", "users", column: "assignee_id"
  add_foreign_key "water_liter_delivereds", "districts"
  add_foreign_key "water_liter_delivereds", "users"
end
