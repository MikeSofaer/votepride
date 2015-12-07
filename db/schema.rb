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

ActiveRecord::Schema.define(version: 20151207223637) do

  create_table "candidacies", force: true do |t|
    t.integer "candidate_id"
    t.integer "race_id"
  end

  create_table "candidates", force: true do |t|
    t.string "name"
  end

  create_table "commitments", force: true do |t|
    t.integer "vote_plan_id"
    t.integer "candidacy_id"
  end

  create_table "elections", force: true do |t|
    t.datetime "polls_open"
    t.string   "name"
  end

  create_table "intentions", force: true do |t|
    t.integer "voter_id"
    t.integer "race_id"
    t.integer "candidacy_id"
  end

  add_index "intentions", ["voter_id", "race_id"], name: "index_intentions_on_voter_id_and_race_id", unique: true

  create_table "motivators", force: true do |t|
    t.integer "candidacy_id"
    t.integer "vote_plan_id"
    t.string  "name"
    t.text    "text"
  end

  create_table "offices", force: true do |t|
    t.string "name"
  end

  create_table "opinions", force: true do |t|
    t.integer "voter_id"
    t.integer "motivator_id"
    t.integer "likingness"
    t.text    "annotation"
  end

  create_table "races", force: true do |t|
    t.integer "election_id"
    t.integer "office_id"
  end

  create_table "vote_plans", force: true do |t|
    t.integer "voter_id"
    t.integer "election_id"
  end

  create_table "voters", force: true do |t|
    t.string   "given_name"
    t.string   "family_name"
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
  end

  add_index "voters", ["email"], name: "index_voters_on_email", unique: true
  add_index "voters", ["reset_password_token"], name: "index_voters_on_reset_password_token", unique: true

end
