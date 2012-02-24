class CreateSalesChannelApis < ActiveRecord::Migration
  def change
    create_table :sales_channel_apis do |t|
      t.string :app_key, :null => false
      t.string :app_secret, :null => false
      t.string :session_key
      t.string :url
      t.boolean :is_enable
      t.references :sales_channel

      t.timestamps
    end
    add_index :sales_channel_apis, :sales_channel_id
  end
end
