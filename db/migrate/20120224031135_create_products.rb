class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.string :sku, :null => false, :unqiue => true
      t.decimal :cost_price, :default => 0, :precision => 12, :scale => 3

      t.timestamps
    end
  end
end
