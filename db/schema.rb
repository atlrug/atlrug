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

ActiveRecord::Schema.define(version: 20140214095331) do

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "requirement"
    t.string   "name"
    t.string   "email"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "personal_info"
    t.text     "career_objective"
    t.text     "work_experience"
    t.text     "education"
    t.text     "skill"
    t.text     "hobby"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talks", force: :cascade do |t|
    t.string   "title"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "twitter"
    t.text     "description"
    t.boolean  "approved",    default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "github_login"
    t.string   "github_token"
  end

end
