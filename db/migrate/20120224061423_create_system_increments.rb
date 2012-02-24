class CreateSystemIncrements < ActiveRecord::Migration
  def change
    create_table :system_increments do |t|
      t.string :for_class, :null => false, :unique => true
      t.integer :starting, :default => 100000
      t.integer :step, :default => 1

      t.timestamps
    end
  end
end
