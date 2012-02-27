class ProductOuterMapping < ActiveRecord::Base
  belongs_to :product
  belongs_to :sales_channel_api
end
