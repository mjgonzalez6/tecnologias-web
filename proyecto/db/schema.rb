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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170621195802) do
=======
ActiveRecord::Schema.define(version: 20170621212702) do
>>>>>>> dabe5c42f8d4fc6b051ab1c86f37916baa55156b

  create_table "assignments", force: :cascade do |t|
    t.integer  "document_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_assignments_on_category_id"
    t.index ["document_id"], name: "index_assignments_on_document_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "suggestion_id"
    t.integer  "user_id"
    t.text     "text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["suggestion_id"], name: "index_comments_on_suggestion_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "is_public"
  end

  create_table "favourites", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_favourites_on_document_id"
    t.index ["person_id"], name: "index_favourites_on_person_id"
  end

  create_table "managements", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_managements_on_document_id"
    t.index ["person_id"], name: "index_managements_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "suggestion_comments", force: :cascade do |t|
    t.integer "suggestion_id"
    t.integer "user_id"
    t.text    "text"
    t.index ["suggestion_id"], name: "index_suggestion_comments_on_suggestion_id"
    t.index ["user_id"], name: "index_suggestion_comments_on_user_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.integer  "document_id"
    t.integer  "person_id"
    t.text     "text"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_suggestions_on_document_id"
    t.index ["person_id"], name: "index_suggestions_on_person_id"
  end

end
