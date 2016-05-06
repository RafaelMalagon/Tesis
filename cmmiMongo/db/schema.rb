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

ActiveRecord::Schema.define(version: 20160506175330) do

  create_table "companies", force: :cascade do |t|
    t.string   "t_name",     limit: 255
    t.string   "t_logo",     limit: 255
    t.string   "t_slogan",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "n_processArea",  limit: 4
    t.string   "t_name",         limit: 255
    t.string   "t_description",  limit: 255
    t.string   "t_type",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "processarea_id", limit: 4
  end

  add_index "goals", ["processarea_id"], name: "index_goals_on_processarea_id", using: :btree

  create_table "levels", force: :cascade do |t|
    t.string   "t_name",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string   "t_name",        limit: 255
    t.string   "t_description", limit: 255
    t.integer  "n_goal",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "goal_id",       limit: 4
  end

  add_index "practices", ["goal_id"], name: "index_practices_on_goal_id", using: :btree

  create_table "processareas", force: :cascade do |t|
    t.integer  "n_level",       limit: 4
    t.string   "t_name",        limit: 255
    t.string   "t_description", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "level_id",      limit: 4
  end

  add_index "processareas", ["level_id"], name: "index_processareas_on_level_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "t_name",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "companie_id", limit: 4
    t.integer  "company_id",  limit: 4
  end

  add_index "projects", ["companie_id"], name: "index_projects_on_companie_id", using: :btree
  add_index "projects", ["company_id"], name: "index_projects_on_company_id", using: :btree

  create_table "roles" force: :cascade do |t|
    t.integer "t_roleName", limit: 8, null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string  "t_description", limit: 50
    t.integer "n_practice",    limit: 4
    t.integer "n_yestStep",    limit: 4
    t.integer "n_noStep",      limit: 4
    t.binary  "t_typeStep",    limit: 50
    t.integer "n_rol",         limit: 4
    t.integer "user_id",       limit: 4
    t.integer "practice_id",   limit: 4
  end

  add_index "steps", ["n_noStep"], name: "n_noStep", using: :btree
  add_index "steps", ["n_practice"], name: "n_practice", using: :btree
  add_index "steps", ["n_rol"], name: "n_rol", using: :btree
  add_index "steps", ["n_yestStep"], name: "n_yestStep", using: :btree
  add_index "steps", ["practice_id"], name: "index_steps_on_practice_id", using: :btree
  add_index "steps", ["user_id"], name: "index_steps_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "address",                limit: 255
    t.integer  "role",                   limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "roles_id",               limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["roles_id"], name: "index_users_on_roles_id", using: :btree

  add_foreign_key "goals", "processareas"
  add_foreign_key "practices", "goals"
  add_foreign_key "processareas", "levels"
  add_foreign_key "projects", "companies"
  add_foreign_key "steps", "practices"
  add_foreign_key "steps", "users"
  add_foreign_key "users", "roles"
end
