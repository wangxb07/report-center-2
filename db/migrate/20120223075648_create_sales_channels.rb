class CreateSalesChannels < ActiveRecord::Migration
  def change
    create_table :sales_channels do |t|
      t.string :name, :null => false
      t.string :code, :null => false, :unique => true
      t.string :comment 

      t.timestamps
    end
  end
end
