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

ActiveRecord::Schema.define(:version => 20131130105053) do

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.integer  "location_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "journals", :force => true do |t|
    t.integer  "customer_id"
    t.string   "title"
    t.string   "author"
    t.string   "headimage"
    t.text     "intialentry"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "postal_code"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "racename"
    t.string   "circutmap"
    t.text     "trailer"
    t.date     "dor"
    t.string   "vehicletype"
    t.string   "racetype"
    t.integer  "sponsor"
    t.string   "location"
    t.string   "telephone"
    t.string   "website"
    t.float    "driverentryfee"
    t.float    "spectatorfee"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "repairs", :force => true do |t|
    t.integer  "vehicle_id"
    t.integer  "service_station_id"
    t.date     "end_date"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.float    "cost"
  end

  create_table "service_stations", :force => true do |t|
    t.string   "name"
    t.string   "owner"
    t.string   "contact_number"
    t.string   "address"
    t.string   "logo"
    t.string   "sstype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "vehicletype"
    t.string   "model"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "registration_num"
  end

end
