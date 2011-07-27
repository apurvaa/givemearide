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

ActiveRecord::Schema.define(:version => 20110727151339) do

  create_table "car_ownerships", :force => true do |t|
    t.integer  "car_id"
    t.integer  "user_id"
    t.string   "picture"
    t.integer  "carrating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "car_ownerships", ["car_id"], :name => "index_car_ownerships_on_car_id"
  add_index "car_ownerships", ["user_id"], :name => "index_car_ownerships_on_user_id"

  create_table "cars", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.boolean  "isdeleted",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.string   "country"
    t.boolean  "allowed_city", :default => true
    t.boolean  "isdeleted",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", :force => true do |t|
    t.integer  "user_id"
    t.text     "feedback"
    t.integer  "rating"
    t.boolean  "isdeleted",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "policies", :force => true do |t|
    t.string   "policyname"
    t.text     "description"
    t.boolean  "isdeleted",   :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", :force => true do |t|
    t.integer  "user_id"
    t.integer  "policy_id"
    t.integer  "car_id"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.string   "tripname"
    t.date     "tripdate"
    t.time     "triptime"
    t.integer  "numpassengers"
    t.text     "description"
    t.integer  "price"
    t.integer  "recommended_price"
    t.boolean  "isdeleted",         :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["car_id"], :name => "index_trips_on_car_id"
  add_index "trips", ["destination_id"], :name => "index_trips_on_destination_id"
  add_index "trips", ["origin_id"], :name => "index_trips_on_origin_id"
  add_index "trips", ["policy_id"], :name => "index_trips_on_policy_id"
  add_index "trips", ["user_id"], :name => "index_trips_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_hashed"
    t.string   "password_salt"
    t.boolean  "isdeleted",       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
