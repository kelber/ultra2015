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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141228112919) do

  create_table "cidades", force: true do |t|
    t.string   "name"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lojas", force: true do |t|
    t.string   "name"
    t.integer  "cidade_id"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "diretor"
    t.string   "mapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "post_category"
    t.string   "title"
    t.text     "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_names", force: true do |t|
    t.string   "name"
    t.integer  "vehicle_brand_id"
    t.integer  "year"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
