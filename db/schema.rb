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

ActiveRecord::Schema.define(:version => 20120227055104) do

  create_table "activities", :force => true do |t|
    t.integer  "increment_id",                    :null => false
    t.string   "name",                            :null => false
    t.datetime "start_time",                      :null => false
    t.datetime "end_time",                        :null => false
    t.integer  "order_count",      :default => 0
    t.integer  "sale_count",       :default => 0
    t.integer  "sales_channel_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "activities", ["sales_channel_id"], :name => "index_activities_on_sales_channel_id"

  create_table "activity_products", :force => true do |t|
    t.string   "outer_sku",                                                      :null => false
    t.decimal  "activity_price", :precision => 12, :scale => 3, :default => 0.0
    t.text     "content"
    t.integer  "activity_id"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  add_index "activity_products", ["activity_id"], :name => "index_activity_products_on_activity_id"

  create_table "product_outer_mappings", :force => true do |t|
    t.string   "outer_sku",            :null => false
    t.integer  "product_id"
    t.integer  "sales_channel_api_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "product_outer_mappings", ["product_id"], :name => "index_product_outer_mappings_on_product_id"
  add_index "product_outer_mappings", ["sales_channel_api_id"], :name => "index_product_outer_mappings_on_sales_channel_api_id"

  create_table "products", :force => true do |t|
    t.string   "name",                                                       :null => false
    t.string   "sku",                                                        :null => false
    t.decimal  "cost_price", :precision => 12, :scale => 3, :default => 0.0
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
  end

  create_table "sales_channel_apis", :force => true do |t|
    t.string   "app_key",          :null => false
    t.string   "app_secret",       :null => false
    t.string   "session_key"
    t.string   "url"
    t.boolean  "is_enable"
    t.integer  "sales_channel_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "sales_channel_apis", ["sales_channel_id"], :name => "index_sales_channel_apis_on_sales_channel_id"

  create_table "sales_channels", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "code",       :null => false
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "system_increments", :force => true do |t|
    t.string   "for_class",                      :null => false
    t.integer  "starting",   :default => 100000
    t.integer  "step",       :default => 1
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

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

end
