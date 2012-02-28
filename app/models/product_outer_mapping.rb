class ProductOuterMapping < ActiveRecord::Base
  validates :outer_sku, :presence => true, :length => { :maximum => 255 }

  belongs_to :product
  belongs_to :sales_channel_api

  validates :product, :presence => true
  validates :sales_channel_api, :presence => true
end
