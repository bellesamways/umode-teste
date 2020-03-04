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

ActiveRecord::Schema.define(version: 2020_03_04_043314) do

  create_table "fabric_variant_suppliers", force: :cascade do |t|
    t.float "price_cents"
    t.string "price_currency"
    t.string "price_unit"
    t.float "min_purchase"
    t.integer "fabric_variant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fabric_variant_id"], name: "index_fabric_variant_suppliers_on_fabric_variant_id"
  end

  create_table "fabric_variants", force: :cascade do |t|
    t.string "name"
    t.string "reference"
    t.text "observation"
    t.string "composition"
    t.float "grammage"
    t.float "width"
    t.integer "fabric_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fabric_id"], name: "index_fabric_variants_on_fabric_id"
  end

  create_table "fabrics", force: :cascade do |t|
    t.string "name", null: false
    t.string "reference"
    t.text "observation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fabric_variant_suppliers", "fabric_variants"
  add_foreign_key "fabric_variants", "fabrics"
end
