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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130514032122) do

  create_table "pictures", :force => true do |t|
    t.text    "caption"
    t.boolean "add_pic"
    t.string  "source"
  end

  create_table "professionals", :force => true do |t|
    t.string "architect_company"
    t.string "photographer"
  end

  create_table "profiles", :force => true do |t|
    t.integer "picture_id"
    t.integer "user_id"
    t.integer "professional_id"
    t.integer "requirement_id"
  end

  create_table "requirements", :force => true do |t|
    t.integer "sf"
    t.string  "location"
    t.float   "price"
  end

  create_table "users", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
