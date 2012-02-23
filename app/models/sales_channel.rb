class SalesChannel < ActiveRecord::Base
  validates :name, :presence => true, :length => 5..30
  validates :comment, :presence => true, :length => { :maximum => 255 }

  has_many :sales_channel_apis, :dependent => :destroy
end
