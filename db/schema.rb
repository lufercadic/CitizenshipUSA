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

ActiveRecord::Schema.define(version: 20170517034819) do

  create_table "civic_answers", force: :cascade do |t|
    t.string   "Descripcion"
    t.boolean  "Correcta"
    t.boolean  "Activa"
    t.integer  "CivicQuestion_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["CivicQuestion_id"], name: "index_civic_answers_on_CivicQuestion_id"
  end

  create_table "civic_favorites", force: :cascade do |t|
    t.integer  "CivicUnit_id"
    t.integer  "CivicAnswer_id"
    t.integer  "CivicQuestion_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["CivicAnswer_id"], name: "index_civic_favorites_on_CivicAnswer_id"
    t.index ["CivicQuestion_id"], name: "index_civic_favorites_on_CivicQuestion_id"
    t.index ["CivicUnit_id"], name: "index_civic_favorites_on_CivicUnit_id"
  end

  create_table "civic_questions", force: :cascade do |t|
    t.string   "Descripcion"
    t.boolean  "Destacada"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "Informacion"
    t.integer  "Numero"
  end

  create_table "civic_tags", force: :cascade do |t|
    t.integer  "CivicQuestion_id"
    t.integer  "CivicType_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["CivicQuestion_id"], name: "index_civic_tags_on_CivicQuestion_id"
    t.index ["CivicType_id"], name: "index_civic_tags_on_CivicType_id"
  end

  create_table "civic_test_answers", force: :cascade do |t|
    t.integer  "CivicTest_id"
    t.integer  "CivicQuestion_id"
    t.integer  "CivicAnswer_id"
    t.boolean  "Correcta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["CivicAnswer_id"], name: "index_civic_test_answers_on_CivicAnswer_id"
    t.index ["CivicQuestion_id"], name: "index_civic_test_answers_on_CivicQuestion_id"
    t.index ["CivicTest_id"], name: "index_civic_test_answers_on_CivicTest_id"
  end

  create_table "civic_tests", force: :cascade do |t|
    t.integer  "CivicUnit_id"
    t.integer  "NumPreguntas"
    t.integer  "NumCorrectas"
    t.integer  "Puntaje"
    t.boolean  "Aprobado"
    t.datetime "Finalizo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["CivicUnit_id"], name: "index_civic_tests_on_CivicUnit_id"
  end

  create_table "civic_types", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "civic_units", force: :cascade do |t|
    t.integer  "User_id"
    t.integer  "NumEvaluaciones"
    t.integer  "Puntaje"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["User_id"], name: "index_civic_units_on_User_id"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "what_zones", force: :cascade do |t|
    t.integer  "Zone_id"
    t.integer  "CivicAnswer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["CivicAnswer_id"], name: "index_what_zones_on_CivicAnswer_id"
    t.index ["Zone_id"], name: "index_what_zones_on_Zone_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string   "Nombre"
    t.boolean  "Principal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
