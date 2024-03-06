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

ActiveRecord::Schema[7.1].define(version: 2024_03_06_105103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estimates", force: :cascade do |t|
    t.integer "price"
    t.string "completion_date"
    t.text "message"
    t.string "file"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_estimates_on_user_id"
  end

  create_table "project_requests", force: :cascade do |t|
    t.string "status"
    t.bigint "review_id", null: false
    t.bigint "user_id", null: false
    t.bigint "estimate_id"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estimate_id"], name: "index_project_requests_on_estimate_id"
    t.index ["project_id"], name: "index_project_requests_on_project_id"
    t.index ["review_id"], name: "index_project_requests_on_review_id"
    t.index ["user_id"], name: "index_project_requests_on_user_id"
  end

  create_table "project_works", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_works_on_project_id"
    t.index ["work_id"], name: "index_project_works_on_work_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "location"
    t.integer "budget"
    t.string "start_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone_number"
    t.string "role"
    t.string "skill"
    t.integer "siret_number"
    t.string "company_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "recommanded_performance"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "estimates", "users"
  add_foreign_key "project_requests", "estimates"
  add_foreign_key "project_requests", "projects"
  add_foreign_key "project_requests", "reviews"
  add_foreign_key "project_requests", "users"
  add_foreign_key "project_works", "projects"
  add_foreign_key "project_works", "works"
  add_foreign_key "projects", "users"
  add_foreign_key "reviews", "users"
end
