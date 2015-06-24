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

ActiveRecord::Schema.define(version: 20150617192130) do

  create_table "associateds", force: :cascade do |t|
    t.string   "name",        limit: 30
    t.string   "ci_rif",      limit: 12
    t.string   "alias",       limit: 50
    t.string   "email",       limit: 30
    t.string   "phone",       limit: 36
    t.string   "address",     limit: 150
    t.integer  "kind",        limit: 4,   default: 0
    t.integer  "frequency",   limit: 4,   default: 0
    t.integer  "status",      limit: 4,   default: 0
    t.string   "description", limit: 150
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "associateds", ["user_id"], name: "index_associateds_on_user_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "kind_operation",     limit: 4,                            default: 0
    t.integer  "kind_payment",       limit: 4,                            default: 0
    t.integer  "kind_invoice",       limit: 4,                            default: 0
    t.string   "name_associated",    limit: 30
    t.string   "ci_associated",      limit: 12
    t.string   "address_associated", limit: 150
    t.string   "name_product",       limit: 30,                                          null: false
    t.string   "description",        limit: 150
    t.integer  "quantity",           limit: 4,                                           null: false
    t.decimal  "subtotal",                       precision: 10, scale: 2
    t.decimal  "rate",                           precision: 5,  scale: 2, default: 12.0
    t.decimal  "tax",                            precision: 10, scale: 2
    t.decimal  "total",                          precision: 10, scale: 2
    t.decimal  "balance",                        precision: 10, scale: 2
    t.date     "date"
    t.string   "document",           limit: 150
    t.string   "payment_proof",      limit: 150
    t.integer  "associated_id",      limit: 4
    t.integer  "user_id",            limit: 4
    t.integer  "product_id",         limit: 4
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
  end

  add_index "invoices", ["associated_id"], name: "index_invoices_on_associated_id", using: :btree
  add_index "invoices", ["product_id"], name: "index_invoices_on_product_id", using: :btree
  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 30,                          null: false
    t.string   "description", limit: 150
    t.decimal  "price",                   precision: 8, scale: 2, null: false
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.text     "encrypted_password",     limit: 255,              null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "username",               limit: 20,               null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "associateds", "users"
  add_foreign_key "invoices", "associateds"
  add_foreign_key "invoices", "products"
  add_foreign_key "invoices", "users"
  add_foreign_key "products", "users"
end
