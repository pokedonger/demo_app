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

ActiveRecord::Schema.define(:version => 20110919091030) do

  create_table "registrations", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "state"
    t.string   "terms"
    t.string   "highschool_name"
    t.string   "highschool_address"
    t.string   "highschool_city"
    t.integer  "highschool_phone"
    t.integer  "prize"
    t.integer  "zip"
    t.string   "facebook_id"
    t.string   "facebook_email"
    t.string   "facebook_first_name"
    t.string   "facebook_last_name"
    t.string   "facebook_gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["email"], :name => "index_registrations_on_email"

  create_table "videos", :force => true do |t|
    t.string   "description"
    t.integer  "approved"
    t.integer  "spam"
    t.string   "facebook_id"
    t.string   "email"
    t.string   "thumb_id"
    t.string   "thumb_original_id"
    t.string   "thumb_url"
    t.string   "thumb_mime_type"
    t.string   "thumb_basename"
    t.string   "thumb_extension"
    t.string   "video_filename"
    t.string   "video_id"
    t.string   "video_original_id"
    t.string   "video_duration"
    t.string   "video_extension"
    t.string   "video_mime_type"
    t.string   "video_url"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
