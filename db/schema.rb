# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160913164709) do

  create_table "customers", force: :cascade do |t|
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "infix"
    t.string   "number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "marketings", force: :cascade do |t|
    t.date     "date"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketings_customers", force: :cascade do |t|
    t.integer "marketings_id"
    t.integer "customers_id"
  end

  add_index "marketings_customers", [nil, nil], name: "index_marketings_customers_on_marketing_id_and_customer_id"
  add_index "marketings_customers", [nil], name: "index_marketings_customers_on_customer_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "subscription_id"
    t.integer  "marketing_id"
    t.text     "body"
    t.string   "subject"
    t.date     "date"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["customer_id"], name: "index_messages_on_customer_id"
  add_index "messages", ["marketing_id"], name: "index_messages_on_marketing_id"
  add_index "messages", ["subscription_id"], name: "index_messages_on_subscription_id"

  create_table "orders", force: :cascade do |t|
    t.date     "date"
    t.integer  "customer_id"
    t.string   "replacement_type"
    t.string   "lens_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "subscriptions", force: :cascade do |t|
    t.date     "date"
    t.integer  "customer_id"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subscriptions", ["customer_id"], name: "index_subscriptions_on_customer_id"
  add_index "subscriptions", ["order_id"], name: "index_subscriptions_on_order_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "infix"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
