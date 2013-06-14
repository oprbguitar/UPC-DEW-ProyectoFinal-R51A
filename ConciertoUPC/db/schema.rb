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

ActiveRecord::Schema.define(:version => 20130613160000) do

  create_table "band_users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "band_id"
    t.integer  "user_id"
  end

  create_table "bands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "style_id"
    t.string   "name"
  end

  create_table "comments", :force => true do |t|
    t.integer  "concert_id"
    t.text     "content"
    t.integer  "ratio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "concerts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "local_id"
    t.integer  "band_id"
    t.time     "hora_fin"
    t.time     "hora_ini"
    t.date     "fecha"
    t.string   "name"
  end

  create_table "concurrences", :force => true do |t|
    t.integer  "es_asistencia"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "di_google_maps"
    t.string   "telefono"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "district_id"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "styles", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "appaterno"
    t.string   "apmaterno"
    t.string   "sexo"
    t.string   "tidocident"
    t.integer  "nudocident"
    t.string   "name"
  end

end
