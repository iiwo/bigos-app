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

ActiveRecord::Schema.define(:version => 20121213215243) do

  create_table "bigos_app_admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "bigos_app_admin_users", ["email"], :name => "index_bigos_app_admin_users_on_email", :unique => true
  add_index "bigos_app_admin_users", ["reset_password_token"], :name => "index_bigos_app_admin_users_on_reset_password_token", :unique => true

  create_table "bigos_app_page_elements", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "is_admin_visible"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "bigos_app_page_modules", :force => true do |t|
    t.integer  "module_id"
    t.string   "name"
    t.integer  "page_element_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "bigos_app_page_templates", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.text     "elements"
    t.integer  "position"
    t.boolean  "is_visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bigos_app_pages", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "label"
    t.integer  "position"
    t.integer  "page_template_id"
    t.text     "elements"
    t.boolean  "is_visible"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "parent_page_id"
  end

end
