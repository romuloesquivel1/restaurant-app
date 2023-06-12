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

ActiveRecord::Schema[7.0].define(version: 2023_06_10_035503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "dish_group"
    t.string "name"
    t.string "description"
    t.float "price"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.float "sub_total"
    t.float "taxes"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "phone"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
