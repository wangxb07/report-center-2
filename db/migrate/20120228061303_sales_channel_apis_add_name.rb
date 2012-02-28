class SalesChannelApisAddName < ActiveRecord::Migration
  def change
    add_column :sales_channel_apis, :name, :string
  end
end
