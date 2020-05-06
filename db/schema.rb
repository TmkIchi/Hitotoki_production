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

ActiveRecord::Schema.define(version: 2020_05_06_135417) do

  create_table "deliveraddresses", force: :cascade do |t|
    t.integer "user_id"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.integer "postal_code"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deliveraddresses_on_user_id"
  end

  create_table "exhibitors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.integer "phone"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "company_name"
    t.string "representative_name"
    t.integer "postal_code"
    t.string "prefecture"
    t.string "city_address"
    t.string "building_name"
    t.datetime "deleted_at"
    t.index ["confirmation_token"], name: "index_exhibitors_on_confirmation_token", unique: true
    t.index ["email"], name: "index_exhibitors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_exhibitors_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_exhibitors_on_unlock_token", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "product_id"
    t.integer "exhibitor_id"
    t.index ["exhibitor_id"], name: "index_orders_on_exhibitor_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_url"
    t.string "product_name"
    t.string "description"
    t.string "distributor"
    t.integer "sku"
    t.integer "variation_amount"
    t.integer "exhibitor_id"
    t.integer "category_id"
    t.integer "tag_id"
    t.integer "product_image_id"
    t.integer "variation_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["exhibitor_id"], name: "index_products_on_exhibitor_id"
    t.index ["product_image_id"], name: "index_products_on_product_image_id"
    t.index ["tag_id"], name: "index_products_on_tag_id"
    t.index ["variation_id"], name: "index_products_on_variation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.string "phone"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "birth_year"
    t.string "birth_month"
    t.string "birth_day"
    t.string "gender"
    t.string "postal_code"
    t.string "prefecture"
    t.string "city_address"
    t.string "building_name"
    t.string "deleted_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
