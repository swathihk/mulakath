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

ActiveRecord::Schema.define(:version => 20120711054538) do

  create_table "albums", :force => true do |t|
    t.string   "avatar"
    t.integer  "users_id"
    t.boolean  "profile_picture"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "chats", :force => true do |t|
    t.integer  "user_id"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "message"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "users_id"
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "logins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "role"
    t.string   "email"
    t.date     "date_of_birth"
    t.boolean  "gender"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "settings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "security_level"
    t.integer  "member_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "role"
    t.string   "email"
    t.date     "date_of_birth"
    t.boolean  "gender"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "status"
  end

end
