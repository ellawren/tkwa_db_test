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

ActiveRecord::Schema.define(:version => 20120123235716) do

  create_table "consultants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultants_projects", :id => false, :force => true do |t|
    t.integer  "project_id",    :null => false
    t.integer  "consultant_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultants_projects", ["project_id", "consultant_id"], :name => "index_projects_consultants_on_project_id_and_consultant_id", :unique => true

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.float    "number",          :null => false
    t.string   "name",            :null => false
    t.string   "location"
    t.string   "client"
    t.string   "primary_contact"
    t.string   "billing_address"
    t.string   "phone"
    t.string   "email"
    t.string   "project_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category"
    t.integer  "extension"
    t.string   "status"
  end

  create_table "projects_reimbursables", :id => false, :force => true do |t|
    t.integer  "project_id",      :null => false
    t.integer  "reimbursable_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects_reimbursables", ["project_id", "reimbursable_id"], :name => "index_projects_reimbursables_on_project_id_and_reimbursable_id", :unique => true

  create_table "projects_services", :id => false, :force => true do |t|
    t.integer  "project_id", :null => false
    t.integer  "service_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects_services", ["project_id", "service_id"], :name => "index_projects_services_on_project_id_and_service_id", :unique => true

  create_table "reimbursables", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "teams", ["employee_id", "project_id"], :name => "index_project_teams_on_project_id_and_employee_id", :unique => true
  add_index "teams", ["employee_id"], :name => "index_project_teams_on_employee_id"
  add_index "teams", ["project_id"], :name => "index_project_teams_on_project_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
