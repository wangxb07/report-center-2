class CreateSalesChannels < ActiveRecord::Migration
  def change
    create_table :sales_channels do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
