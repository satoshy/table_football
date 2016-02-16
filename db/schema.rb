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

ActiveRecord::Schema.define(version: 20160216142959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.integer  "stage_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "fuser_team_id"
    t.integer  "suser_team_id"
  end

  add_index "matches", ["fuser_team_id"], name: "index_matches_on_fuser_team_id", using: :btree
  add_index "matches", ["suser_team_id"], name: "index_matches_on_suser_team_id", using: :btree

  create_table "matches_rounds", id: false, force: :cascade do |t|
    t.integer "match_id", null: false
    t.integer "round_id", null: false
  end

  add_index "matches_rounds", ["match_id", "round_id"], name: "index_matches_rounds_on_match_id_and_round_id", using: :btree
  add_index "matches_rounds", ["round_id", "match_id"], name: "index_matches_rounds_on_round_id_and_match_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "rounds", force: :cascade do |t|
    t.string   "name"
    t.integer  "round_type"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "rounds", ["tournament_id"], name: "index_rounds_on_tournament_id", using: :btree

  create_table "rounds_teams", id: false, force: :cascade do |t|
    t.integer "round_id", null: false
    t.integer "team_id",  null: false
  end

  add_index "rounds_teams", ["round_id", "team_id"], name: "index_rounds_teams_on_round_id_and_team_id", using: :btree
  add_index "rounds_teams", ["team_id", "round_id"], name: "index_rounds_teams_on_team_id_and_round_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "first_user_id"
    t.integer  "second_user_id"
  end

  add_index "teams", ["first_user_id"], name: "index_teams_on_first_user_id", using: :btree
  add_index "teams", ["second_user_id"], name: "index_teams_on_second_user_id", using: :btree

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status_type", default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tournaments_users", id: false, force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "tournament_id", null: false
  end

  add_index "tournaments_users", ["tournament_id", "user_id"], name: "index_tournaments_users_on_tournament_id_and_user_id", using: :btree
  add_index "tournaments_users", ["user_id", "tournament_id"], name: "index_tournaments_users_on_user_id_and_tournament_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.string   "avatar",                 default: ""
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "rounds", "tournaments"
end
