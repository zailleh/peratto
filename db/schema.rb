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

ActiveRecord::Schema.define(version: 2020_12_20_022606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.text "email_digest"
    t.text "password_digest"
    t.string "display_name"
    t.datetime "last_login"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email_digest"], name: "index_users_on_email_digest", unique: true
  end

  create_table "users_vocabularies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "vocabulary_id"
    t.datetime "last_tested"
    t.integer "correct", default: 0
    t.integer "incorrect", default: 0
    t.index ["user_id", "vocabulary_id"], name: "index_users_vocabularies_on_user_id_and_vocabulary_id", unique: true
    t.index ["user_id"], name: "index_users_vocabularies_on_user_id"
    t.index ["vocabulary_id"], name: "index_users_vocabularies_on_vocabulary_id"
  end

  create_table "vocabularies", force: :cascade do |t|
    t.string "kanji"
    t.string "hiragana"
    t.string "katakana"
    t.string "romaji"
    t.string "meaning"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level"], name: "index_vocabularies_on_level"
  end

end
