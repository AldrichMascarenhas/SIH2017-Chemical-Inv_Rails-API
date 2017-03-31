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

ActiveRecord::Schema.define(version: 20170331065157) do

  create_table "admins", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true
  end

  create_table "logistics", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "logistics_type"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_logistics_on_user_id"
  end

  create_table "logistics_services", force: :cascade do |t|
    t.integer  "logistic_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["logistic_id"], name: "index_logistics_services_on_logistic_id"
  end

  create_table "packages", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "packages_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "shipment_id"
    t.integer  "warehouse_id"
    t.string   "quantity"
    t.string   "quantity_type"
    t.index ["product_id"], name: "index_packages_on_product_id"
    t.index ["shipment_id"], name: "index_packages_on_shipment_id"
    t.index ["warehouse_id"], name: "index_packages_on_warehouse_id"
  end

  create_table "producers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "producers_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_producers_on_user_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.integer  "producer_id"
    t.string   "name"
    t.string   "product_types_type"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["producer_id"], name: "index_product_types_on_producer_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_type_id"
    t.string   "name"
    t.string   "products_type"
    t.string   "description"
    t.string   "cas_number"
    t.float    "quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "quantity_type"
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "shipments_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "name"
    t.string   "status"
    t.date     "date_departure"
    t.date     "date_arrival"
    t.integer  "logistics_service_id"
    t.integer  "user_id"
    t.index ["logistics_service_id"], name: "index_shipments_on_logistics_service_id"
    t.index ["user_id"], name: "index_shipments_on_user_id"
  end

  create_table "transports", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "uid"
    t.integer  "logistic_id"
    t.index ["logistic_id"], name: "index_transports_on_logistic_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "warehouses_type"
    t.index ["user_id"], name: "index_warehouses_on_user_id"
  end

end
