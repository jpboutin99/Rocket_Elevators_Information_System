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

ActiveRecord::Schema.define(version: 2018_10_09_191944) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address_type"
    t.string "status"
    t.string "entity"
    t.string "street_address"
    t.string "suite_or_apt"
    t.string "city"
    t.string "zip_code"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "addresses_id"
    t.string "administrator_full_name"
    t.string "administrator_phone"
    t.string "administrator_email"
    t.string "technician_full_name"
    t.string "technician_phone"
    t.string "technician_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addresses_id"], name: "index_buildings_on_addresses_id"
    t.index ["customer_id"], name: "index_buildings_on_customer_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "business_name"
    t.bigint "address_id"
    t.string "contact_full_name"
    t.string "contact_phone"
    t.string "contact_email"
    t.string "business_description"
    t.string "technician_full_name"
    t.string "technician_phone"
    t.string "technician_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quote_type"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "nb_floors"
    t.integer "nb_apt"
    t.integer "nb_base"
    t.integer "nb_cies"
    t.integer "nb_parking"
    t.integer "nb_shaft"
    t.integer "nb_corp"
    t.integer "nb_person"
    t.integer "bus_hours"
    t.integer "req_elev"
    t.string "option"
    t.integer "nb_elev"
    t.float "price_per_elev"
    t.float "elev_total"
    t.float "cost_install"
    t.float "total"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buildings", "addresses", column: "addresses_id"
  add_foreign_key "buildings", "customers"
  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "users"
  add_foreign_key "employees", "users"
end
