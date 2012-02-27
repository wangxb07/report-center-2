class CreateProductOuterMappings < ActiveRecord::Migration
  def change
    create_table :product_outer_mappings do |t|
      t.string :outer_sku, :null => false
      t.references :product
      t.references :sales_channel_api

      t.timestamps
    end
    add_index :product_outer_mappings, :product_id
    add_index :product_outer_mappings, :sales_channel_api_id
  end
end
