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

ActiveRecord::Schema.define(:version => 20120203231528) do

  create_table "cidades", :force => true do |t|
    t.string   "nome",       :limit => 100, :null => false
    t.integer  "uf_id",                     :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "cidades", ["uf_id"], :name => "fk_cidades_ufs"

  create_table "enderecos", :force => true do |t|
    t.string   "logradouro",         :limit => 45
    t.string   "numero",             :limit => 45
    t.string   "complemento",        :limit => 45
    t.string   "bairro",             :limit => 45
    t.string   "cep",                :limit => 45
    t.integer  "tipo_logradouro_id",               :null => false
    t.integer  "tipo_endereco_id",                 :null => false
    t.integer  "cidade_id",                        :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "enderecos", ["cidade_id"], :name => "fk_enderecos_cidades1"
  add_index "enderecos", ["tipo_endereco_id"], :name => "fk_enderecos_tipo_enderecos1"
  add_index "enderecos", ["tipo_logradouro_id"], :name => "fk_enderecos_tipo_logradouros1"

  create_table "mantenedoras", :force => true do |t|
    t.string   "nome"
    t.string   "sigla",       :limit => 45
    t.string   "cnpj",        :limit => 14
    t.string   "telefone",    :limit => 45
    t.integer  "endereco_id",               :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "mantenedoras", ["endereco_id"], :name => "fk_Estabelecimentos_enderecos1"

  create_table "tipo_enderecos", :force => true do |t|
    t.string   "nome",       :limit => 45
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "tipo_logradouros", :force => true do |t|
    t.string   "nome",       :limit => 45
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "ufs", :force => true do |t|
    t.string   "sigla",      :limit => 3,  :null => false
    t.string   "nome",       :limit => 80, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "ufs", ["nome"], :name => "nome_UNIQUE", :unique => true
  add_index "ufs", ["sigla"], :name => "sigla_UNIQUE", :unique => true

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.string   "sigla",          :limit => 80
    t.string   "telefone",       :limit => 45
    t.integer  "mantenedora_id",               :null => false
    t.integer  "enderecos_id",                 :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "unidades", ["enderecos_id"], :name => "fk_unidades_enderecos1"
  add_index "unidades", ["mantenedora_id"], :name => "fk_Unidades_Mantenedoras1"

  create_table "usuarios", :force => true do |t|
    t.string   "nome",                   :limit => 80,                 :null => false
    t.string   "telefone",               :limit => 11
    t.string   "celular",                :limit => 11,                 :null => false
    t.integer  "endereco_id",                                          :null => false
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["endereco_id"], :name => "fk_usuarios_enderecos1"
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
