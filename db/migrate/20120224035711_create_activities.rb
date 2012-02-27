class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :increment_id, :null => false, :unique => true
      t.string :name, :null => false
      t.datetime :start_time, :null => false
      t.datetime :end_time, :null => false
      t.integer :order_count, :default => 0
      t.integer :sale_count, :default => 0
      t.references :sales_channel

      t.timestamps
    end
    add_index :activities, :sales_channel_id
  end
end
