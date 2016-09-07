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

ActiveRecord::Schema.define(version: 20160907132758) do

  create_table "cards", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_cards_on_category_id"
    t.index ["customer_id"], name: "index_cards_on_customer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
    t.integer  "price"
    t.index ["company_id"], name: "index_categories_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel"
    t.string   "siret"
    t.string   "logo"
    t.string   "logo_cache"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_companies_on_name"
    t.index ["siret"], name: "index_companies_on_siret"
    t.index ["tel"], name: "index_companies_on_tel"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "tel"
    t.string   "email"
    t.string   "address"
    t.string   "avatar"
    t.string   "avatar_cache"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_customers_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "avatar"
    t.string   "avatar_cache"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
