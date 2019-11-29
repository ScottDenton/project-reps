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

ActiveRecord::Schema.define(version: 2019_11_29_192432) do

  create_table "amraps", force: :cascade do |t|
    t.string "name"
    t.integer "rounds"
    t.integer "reps"
    t.integer "user_id"
    t.text "work"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cardio_components", force: :cascade do |t|
    t.string "name"
    t.integer "distance"
    t.integer "hours"
    t.integer "minutes"
    t.integer "seconds"
    t.integer "calories"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "muscles", force: :cascade do |t|
    t.string "name"
    t.integer "muscle_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strength_component_muscles", force: :cascade do |t|
    t.integer "muscle_group_id"
    t.integer "strength_component_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strength_components", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "weight"
    t.integer "reps"
    t.integer "sets"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

end
