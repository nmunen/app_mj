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

ActiveRecord::Schema.define(version: 20160929015864) do

  create_table "hanchan_results", force: :cascade do |t|
    t.string   "hanchan_id",   limit: 255, null: false
    t.string   "player_id",    limit: 255, null: false
    t.integer  "yen_points",   limit: 4,   null: false
    t.integer  "yen_yakitori", limit: 4,   null: false
    t.integer  "yen_tobi",     limit: 4,   null: false
    t.integer  "yen_umaoka",   limit: 4,   null: false
    t.integer  "yen_total",    limit: 4,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "match_id",     limit: 255, null: false
  end

  add_index "hanchan_results", ["match_id", "hanchan_id", "player_id"], name: "index_hanchan_results_on_match_id_and_hanchan_id_and_player_id", unique: true, using: :btree

  create_table "hanchans", force: :cascade do |t|
    t.string   "match_id",   limit: 255, null: false
    t.string   "hanchan_id", limit: 255, null: false
    t.string   "player_id",  limit: 255, null: false
    t.integer  "points",     limit: 4,   null: false
    t.boolean  "is_baked",               null: false
    t.boolean  "is_flied",               null: false
    t.boolean  "is_flying",              null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "hanchans", ["match_id", "hanchan_id", "player_id"], name: "index_hanchans_on_match_id_and_hanchan_id_and_player_id", unique: true, using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "match_id",   limit: 255, null: false
    t.string   "match_name", limit: 255
    t.string   "player_id",  limit: 255, null: false
    t.integer  "yen_total",  limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "player_id",   limit: 255, null: false
    t.string   "player_name", limit: 255, null: false
    t.boolean  "is_admin"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "players", ["player_id"], name: "index_players_on_player_id", unique: true, using: :btree

  create_table "tip_results", force: :cascade do |t|
    t.string   "match_id",   limit: 255, null: false
    t.string   "player_id",  limit: 255, null: false
    t.integer  "yen_tip",    limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tip_results", ["match_id", "player_id"], name: "index_tip_results_on_match_id_and_player_id", unique: true, using: :btree

  create_table "tips", force: :cascade do |t|
    t.string   "match_id",   limit: 255, null: false
    t.string   "player_id",  limit: 255, null: false
    t.integer  "tip",        limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tips", ["match_id", "player_id"], name: "index_tips_on_match_id_and_player_id", unique: true, using: :btree

end
