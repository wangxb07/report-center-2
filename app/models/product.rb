class Product < ActiveRecord::Base
  validates :name, :presence => true, :length => {:maximum => 255}
  validates :sku, :presence => true, :length => {:maximum => 255}
  validates :cost_price, :numericality => true

  validates_uniqueness_of :sku
end
