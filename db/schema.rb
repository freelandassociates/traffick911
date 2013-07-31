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

ActiveRecord::Schema.define(:version => 20130731104634) do

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "volunteers", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.date     "date_of_birth"
    t.string   "phone_number_1"
    t.string   "phone_type_1"
    t.string   "phone_number_2"
    t.string   "phone_type_2"
    t.string   "email"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_relationship"
    t.string   "emergency_contact_phone_number"
    t.string   "occupation"
    t.text     "occupation_main_duties"
    t.text     "application_notes_talents"
    t.text     "application_notes_languages"
    t.text     "application_notes_passion"
    t.text     "application_notes_gain"
    t.string   "love_outreach"
    t.date     "official_volunteer"
    t.date     "interest_email_answered"
    t.date     "orientation_date"
    t.string   "orientation_location"
    t.string   "orientation_presenter"
    t.date     "application_form_received"
    t.date     "background_check"
    t.string   "letters_of_recommendation"
    t.string   "waiver"
    t.text     "notes"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end
