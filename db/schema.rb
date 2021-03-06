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

ActiveRecord::Schema.define(:version => 20130122201509) do

  create_table "clinics", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.integer  "clinic_id"
    t.string   "name"
    t.string   "last_name"
    t.string   "speciality"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "patients", ["email"], :name => "index_patients_on_email", :unique => true
  add_index "patients", ["phone"], :name => "index_patients_on_phone", :unique => true
  add_index "patients", ["remember_token"], :name => "index_patients_on_remember_token"

  create_table "reserves", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "datetime"
    t.boolean  "available"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "doctor_id"
    t.string   "day"
    t.time     "start_hour"
    t.time     "finish_hour"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
