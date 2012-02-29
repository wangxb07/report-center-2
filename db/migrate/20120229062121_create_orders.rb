class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :increment_id, :null => false, :unique => true
      t.string :customer_name, :null => false
      t.decimal :payment, :default => 0
      t.decimal :total_amount, :default => 0
      t.datetime :sale_time
      t.integer :status, :default => 0
      t.integer :sale_count
      t.integer :sku_count
      t.string :receiver_name
      t.string :receiver_state
      t.string :receiver_city
      t.string :receiver_district
      t.string :receiver_zip
      t.string :receiver_address
      t.boolean :is_receiver_info_complete, :default => false
      t.string :outer_iid, :null => false
      t.text :buyer_memo
      t.references :sales_channel_api
      t.references :activity

      t.timestamps
    end
    add_index :orders, :sales_channel_api_id
    add_index :orders, :activity_id
  end
end
