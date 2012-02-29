class ChangeActivityProductAddName < ActiveRecord::Migration
  def change
    add_column :activity_products, :name, :string
  end
end
