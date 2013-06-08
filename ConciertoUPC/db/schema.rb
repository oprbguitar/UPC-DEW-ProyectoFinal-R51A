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

ActiveRecord::Schema.define(:version => 20130608170401) do

  create_table "band_members", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bands", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "style_id"
  end

  create_table "comentarios", :force => true do |t|
    t.text     "content"
    t.integer  "rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "concert_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "concert_id"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["concert_id"], :name => "index_comments_on_concert_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "concerts", :force => true do |t|
    t.date     "hora_ini"
    t.date     "hora_fin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "local_id"
    t.integer  "band_id"
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
    t.integer  "ti_persona"
    t.string   "prenombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.integer  "sexo"
    t.integer  "ti_doc_ident"
    t.string   "nu_doc_ident"
    t.string   "email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
