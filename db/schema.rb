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

ActiveRecord::Schema.define(:version => 20110914032051) do

  create_table "albums", :force => true do |t|
    t.boolean  "active"
    t.string   "name"
    t.string   "description"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["cached_slug"], :name => "index_albums_on_cached_slug"

  create_table "attachments", :force => true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.string   "type"
    t.string   "title"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.string   "data_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["attachable_type", "attachable_id"], :name => "index_attachments_on_attachable_type_and_attachable_id"
  add_index "attachments", ["type"], :name => "index_attachments_on_type"

  create_table "contacts", :force => true do |t|
    t.string   "subject"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.boolean  "active"
    t.string   "name"
    t.text     "body"
    t.date     "start_at"
    t.date     "end_at"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["cached_slug"], :name => "index_events_on_cached_slug"

  create_table "institutionals", :force => true do |t|
    t.text "body"
    t.text "principles"
    t.text "contact"
  end

  create_table "partners", :force => true do |t|
    t.boolean  "active"
    t.string   "name"
    t.string   "url"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partners", ["cached_slug"], :name => "index_partners_on_cached_slug"

  create_table "projects", :force => true do |t|
    t.boolean  "active"
    t.string   "name"
    t.text     "body"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["cached_slug"], :name => "index_projects_on_cached_slug"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "cached_slug"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["cached_slug"], :name => "index_users_on_cached_slug"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
