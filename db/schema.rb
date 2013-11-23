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

ActiveRecord::Schema.define(version: 20131123183411) do

  create_table "empresas", force: true do |t|
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "telefone"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipes", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
  end

  add_index "equipes", ["empresa_id"], name: "index_equipes_on_empresa_id", using: :btree

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "numero_linha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "equipe_id"
  end

  add_index "funcionarios", ["equipe_id"], name: "index_funcionarios_on_equipe_id", using: :btree

  create_table "localizacaos", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "funcionario_id"
  end

  add_index "localizacaos", ["funcionario_id"], name: "index_localizacaos_on_funcionario_id", using: :btree

end
