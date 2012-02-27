class CreateActivityProducts < ActiveRecord::Migration
  def change
    create_table :activity_products do |t|
      t.string :outer_sku, :null => false
      t.decimal :activity_price, :default => 0, :precision => 12, :scale => 3
      t.text :content
      t.references :activity

      t.timestamps
    end
    add_index :activity_products, :activity_id
  end
end
